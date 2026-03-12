namespace EventEase.Models
{
    public class Event
    {
        public int EventID { get; set; }
        public DateTime E_Date { get; set; }
        public TimeSpan E_Time { get; set; }
        public string E_Description { get; set; }
        public int VenueID { get; set; }
        public Venue Venue { get; set; }
    }
}
