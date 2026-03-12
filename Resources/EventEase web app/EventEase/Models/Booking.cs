namespace EventEase.Models
{
    public class Booking
    {
        public int BookingID { get; set; }
        public string ContactInfo { get; set; }
        public DateTime B_Date { get; set; }
        public TimeSpan B_Time { get; set; }
        public string B_Name { get; set; }
    }
}
