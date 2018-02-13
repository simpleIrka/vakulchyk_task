package epam.vakulchyk.bookinghotel.utilitarian;

import javax.servlet.Registration;

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
    LOGOUT {
        {
            this.command = new LogoutCommand();
        }
    },
    DELETEORDER {
        {
            this.command = new LoginCommand();
        }
    },
    LIST {
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
