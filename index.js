const { PrismaClient } = require("@prisma/client")
const prisma = new PrismaClient()

prisma.photos.findMany({
	where: { mediaType: 'video' }
}).then((value) => {
	console.dir(value)
}).catch((err) => {
	console.dir(err)
})