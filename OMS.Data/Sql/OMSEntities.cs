using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OMS.Data.Sql
{
    public class OMSEntities : myDataBaseEntities
    {
        public OMSEntities()
        {
            this.Configuration.LazyLoadingEnabled = false;
        }
    }
}
