namespace EventEase.Models
{
    public class EventEaser
    {
        public int EventEaseID { get; set; }
        public int BookingID { get; set; }
        public int VenueID { get; set; }
        public int NumOfEmployees { get; set; }
        public Booking Booking { get; set; }
        public Venue Venue { get; set; }
    }
}
