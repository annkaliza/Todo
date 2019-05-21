
namespace TodoApi.Models
{
    public class TodoItem
    {
        public long Id { get; set; }
        // public long _id = 0;
        // public long Id{
        //     get {
        //         return Id;
        //     }
        //     set {
        //         if(value > 5){
        //             Id = value;
        //         }
        public string Name { get; set; }
        public bool IsComplete { get; set; }
    }
}

