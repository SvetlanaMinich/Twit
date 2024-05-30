using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TwitterAnal.Domain.Entities
{
    public class Like : Entity
    {
        public Like() { }
        public Like(int userId, int postId)
        {
            likesCount++;
            this.Id = likesCount;
            this.userId = userId;
            this.postId = postId;
        }
        public static int likesCount = 0;
        public int userId { get; set; }
        public int postId { get; set; }
    }
}
