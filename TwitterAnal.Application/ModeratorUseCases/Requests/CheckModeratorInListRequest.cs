using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TwitterAnal.Application.ModeratorUseCases.Requests
{
    public sealed record CheckModeratorInListRequest(string email, string password) : IRequest<Moderator>;
}
