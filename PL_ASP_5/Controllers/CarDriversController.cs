﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using DAL;
using DAL.Entities;
using Microsoft.AspNetCore.Authorization;
using Microsoft.Extensions.Logging;

namespace PL_ASP_5.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CarDriversController : ControllerBase
    {
        private readonly GIBDDContext _context;
        private readonly ILogger<CarDriversController> _logger;

        public CarDriversController(GIBDDContext context,
            ILogger<CarDriversController> logger)
        {
            _context = context;
            _logger = logger;
        }

        // GET: api/CarDrivers
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CarDriver>>> GetCarDrivers()
        {
            return await _context.CarDrivers.ToListAsync();
        }

        // GET: api/CarDrivers/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CarDriver>> GetCarDriver(int id)
        {
            var carDriver = await _context.CarDrivers.FindAsync(id);

            if (carDriver == null)
            {
                return NotFound();
            }

            return carDriver;
        }
        [Authorize(Roles = "inspector")]

        // PUT: api/CarDrivers/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCarDriver(int id, CarDriver carDriver)
        {
            if (id != carDriver.Id)
            {
                return BadRequest();
            }

            _context.Entry(carDriver).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (Exception e)
            {
                if (!CarDriverExists(id))
                {
                    return NotFound();
                }
                else
                {
                    _logger.LogError(e.ToString());

                    throw;
                }
            }

            return NoContent();
        }
        [Authorize(Roles = "inspector")]

        // POST: api/CarDrivers
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CarDriver>> PostCarDriver(CarDriver carDriver)
        {
            _context.CarDrivers.Add(carDriver);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCarDriver", new { id = carDriver.Id }, carDriver);
        }
        [Authorize(Roles = "inspector")]

        // DELETE: api/CarDrivers/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCarDriver(int id)
        {
            var carDriver = await _context.CarDrivers.FindAsync(id);
            if (carDriver == null)
            {
                return NotFound();
            }

            _context.CarDrivers.Remove(carDriver);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CarDriverExists(int id)
        {
            return _context.CarDrivers.Any(e => e.Id == id);
        }
    }
}
