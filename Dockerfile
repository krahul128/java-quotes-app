# Base image

FROM sapmachine:17


#creating workdir

WORKDIR /app

# get code from local and copy paste to workdir container working directory

COPY src/Main.java /app/Main.java
COPY quotes.txt quotes.txt

# Run the command to insatll libs or to compile code

RUN javac Main.java


#exposing ports
EXPOSE 8000


#serve the app /keep it running
CMD ["java" , "Main"]


