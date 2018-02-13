package epam.vakulchyk.bookinghotel.command;

import epam.vakulchyk.bookinghotel.command.admin.*;
import epam.vakulchyk.bookinghotel.command.client.AddOrederCommand;
import epam.vakulchyk.bookinghotel.command.client.ClientOrderCommand;
import epam.vakulchyk.bookinghotel.command.client.OpenRegistrationCommand;
import epam.vakulchyk.bookinghotel.command.client.RegistrationCommand;
import epam.vakulchyk.bookinghotel.command.common.*;

public enum CommandEnum {
    LOGIN {
        {
            this.command = new LoginCommand();
        }
    },
    ORDER {
        {
            this.command = new OrderCommand();
        }
    },
    PERSONORDER {
        {
            this.command = new ClientOrderCommand();
        }
    },
    OPENPAGE {
        {
            this.command = new OpenCommand();
        }
    },
    INFOCLIENT {
        {
            this.command = new InfoClientCommand();
        }
    },
    LANGUAGE {
        {
            this.command = new LanguageCommand();
        }
    },
    ADDORDER {
        {
            this.command = new AddOrederCommand();
        }
    },
    LOGOUT {
        {
            this.command = new LogoutCommand();
        }
    },
    DELETERESIDENT {
        {
            this.command = new DeleteResidentCommand();
        }
    },
    LIST {
        {
            this.command = new RegistrationOrderCommand();
        }
    },
    TAKEFREEROOM {
        {
            this.command = new FreeRoomCommand();
        }
    },
    AUTHORIZATION {
        {
            this.command = new AuthirizationCommand();
        }
    },
    GETIN {
        {
            this.command = new AddOrederCommand();
        }
    },
    RESIDENT {
        {
            this.command = new ResidentCommand();
        }
    },
    OPEN {
        {
            this.command = new OpenRegistrationCommand();
        }
    },
    REGISTRATION {
        {
            this.command = new RegistrationCommand();
        }
    };

    ActionCommand command;

    public ActionCommand getCurrentCommand() {
        return command;
    }
}
