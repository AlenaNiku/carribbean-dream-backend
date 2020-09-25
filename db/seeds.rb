# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resorts = Resort.create([
    {
        name: "St. Lucia: Jade Mountain Resort",
        image_url: "https://i.ibb.co/Bzkq2Yh/jade-mountain.jpg"
    },
    {
        name: "Jamaica: The Caves",
        image_url: "https://i.ibb.co/NTSptNT/Caves.jpg"
    },
    {
        name: "St. Barts: Eden Rock",
        image_url: "https://i.ibb.co/105KjRv/eden-rock-st-barths-exterior-6.jpg"
    },
    {
        name: "St. Lucia: Jade Mountain Resort",
        image_url: "https://i.ibb.co/Bzkq2Yh/jade-mountain.jpg"
    },
    {
        name: "Turks and Caicos: COMO Parrot Cay",
        image_url: "https://i.ibb.co/7vd4dKN/parrot-cay-como-01.jpg"
    },
    {
        name: "Grenada: Sandals Grenada Resort & Spa",
        image_url: "https://i.ibb.co/GHJ19V7/grenada-sandals.jpg"
    }
])

reviews = Review.create([
    {
        title: "Amazing resort",
        description: "Romantic? Undoubtedly. Unique? Absolutely. Expensive? For sure. Through an innovative, open fourth wall, each of Jade's 29 enormous suites overlooks the sea from its canopied bed, raised whirlpool tub, and (in all but the entry-level category) private infinity pool. Getting to Jade Mountain can be tedious, even nauseating, but its organic cuisine, doting service, unwavering silence (no TVs, radios, or children), and extraordinary design make the long journey worthwhile.",
        score: 5,
        resort: resorts.first
    },
    {
        title: "Romantic escape",
        description: "One of Jamaica's most romantic escape (for adults only), the Caves' 11 unique, private cottages and suites are tucked along lush garden paths and dramatic seaside cliffs (there's no beach) carved with steep stairways down to the water and into incredible grottos.. A top-shelf bar, an Aveda spa, free cooking classes, and intimate, incredibly attentive service make it Jamaica's best all-inclusive. High-quality food celebrates local ingredients, and the scene is laid-back and bohemian -- suited to travelers who appreciate outdoor showers and artful decor in favor of conventional luxury.",
        score: 5,
        resort: resorts.second
    }
])