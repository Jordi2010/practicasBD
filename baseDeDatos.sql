CREATE TABLE Pacientes(
    pacienteId INT PRIMARY KEY,
    nombre VARCHAR(100),
    fechaNacimiento DATE,
    direccion VARCHAR(50),
    telefono INT
)

CREATE TABLE Medicos(
    medicoId INT PRIMARY KEY,
    nombre VARCHAR(100),
    especialidad VARCHAR(100)
)

CREATE TABLE Citas(
    citaId INT PRIMARY KEY,
    pacienteId INT,
    medicoId INT,
    fechaHora DATETIME,
    motivo VARCHAR(100),
    CONSTRAINT fk_pacienteId FOREIGN KEY (pacienteId) REFERENCES Pacientes(pacienteId),
    CONSTRAINT fk_medicoId FOREIGN KEY (medicoId) REFERENCES Medicos(medicoId)
)

CREATE TABLE HistorialesMedicos(
    historialId INT PRIMARY KEY,
    pacienteId INT,
    fecha DATE,
    diagnostico VARCHAR(100),
    tratamiento VARCHAR(100),
    CONSTRAINT pacienteId_fk FOREIGN KEY (pacienteId) REFERENCES Pacientes(pacienteId)
)