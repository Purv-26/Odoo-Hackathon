@echo off
echo Installing ReWear - Sustainable Fashion Exchange Platform
echo ========================================================

echo.
echo Installing backend dependencies...
npm install

echo.
echo Installing frontend dependencies...
cd client
npm install
cd ..

echo.
echo Creating uploads directory...
mkdir server\uploads

echo.
echo Setting up environment variables...
echo PORT=5000 > .env
echo JWT_SECRET=rewear-sustainable-fashion-secret-key-2024 >> .env
echo NODE_ENV=development >> .env

echo.
echo Installation complete!
echo.
echo To start the development servers:
echo   npm run dev
echo.
echo Or run servers separately:
echo   npm run server    (Backend - Port 5000)
echo   cd client && npm start    (Frontend - Port 3000)
echo.
echo Default admin account:
echo   Email: admin@rewear.com
echo   Password: password
echo.
pause 