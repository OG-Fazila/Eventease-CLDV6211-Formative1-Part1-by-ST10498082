
using Microsoft.EntityFrameworkCore;
using EventEase.Models;
namespace EventEase.Data
{
    public class EventEaseContext  : DbContext
    {
        public EventEaseContext(DbContextOptions<EventEaseContext> options)
        : base(options)
        {
        }

        public DbSet<Employee> Employees { get; set; }
        public DbSet<Booking> Bookings { get; set; }
        public DbSet<Venue> Venues { get; set; }
        public DbSet<Event> Events { get; set; }
        public DbSet<EventEaser> EventEasers { get; set; }
    }
}
