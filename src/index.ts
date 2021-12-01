import express from 'express';
import path from 'path';


const app = express();
app.use(express.static(path.join(__dirname, 'public')))
app.listen(4000, () => {
  console.log(`server running on port 4000`);
});
