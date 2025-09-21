<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>קישוטי נגילה</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Heebo:wght@400;700&display=swap');
        @font-face {
            font-family: 'Rubik One';
            src: url('https://fonts.gstatic.com/s/rubikone/v16/Jz1iR-vj_YseJ1x-mRzH8j1W.woff2') format('woff2');
        }
        body {
            font-family: 'Heebo', sans-serif;
            background-color: #f7f3e9;
            color: #4b3832;
        }
        .container {
            max-width: 900px;
        }
        .card {
            background-color: #ffffff;
            border: 1px solid #dcd4c6;
        }
        .btn {
            width: 100%;
            text-align: center;
            padding-top: 0.75rem;
            padding-bottom: 0.75rem;
            border-radius: 0.5rem;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            font-weight: bold;
            color: white;
            transition: background-color 0.3s;
        }
    </style>
</head>
<body class="p-4 sm:p-8">
    <div class="container mx-auto">
        <header class="text-center mb-8">
            <div class="mb-4">
                <img src="https://lh3.googleusercontent.com/d/13ILgLWYi6uVe8yXv88sb73BSdBrwQ2dY" alt="קישוטי עד סטודיו נגילה" class="mx-auto w-full max-w-lg rounded-lg shadow-lg">
            </div>
            <h1 class="text-3xl sm:text-4xl font-bold page-title mb-2">קישוטי עד סטודיו נגילה</h1>
            <p class="text-lg mt-2 text-6b5d5b">קישוטים לסוכה בתחושה של בית :)</p>
            <div class="flex items-center justify-center mt-4 text-center">
                <p class="text-lg sm:text-xl font-bold ml-2">בשיתוף שרעבי 4 מינים</p>
                <img src="https://lh3.googleusercontent.com/d/1gYjqfKTxW62yMlKA7IB9c_2vpXYi91-P" alt="לוגו אוריין שרעבי" class="h-16 w-16 sm:h-20 sm:w-20 object-contain">
            </div>
        </header>

        <main>
            <div id="product-list" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
                <!-- Products will be generated here -->
            </div>

            <div class="card p-6 rounded-lg shadow-lg mb-8">
                <h2 class="text-2xl font-semibold mb-4 text-a0522d">סיכום הזמנה</h2>
                <div id="order-summary" class="text-lg">
                    <p>
                        <span class="font-bold">סה"כ פריטים: </span>
                        <span id="total-items">0</span>
                    </p>
                    <p class="mt-2">
                        <span class="font-bold">סה"כ לתשלום: </span>
                        <span id="total-price" class="font-bold text-xl">₪0</span>
                    </p>
                </div>
            </div>

            <div class="card p-6 rounded-lg shadow-lg">
                <h2 class="text-2xl font-semibold mb-4 text-a0522d">פרטי יצירת קשר</h2>
                <form id="order-form" novalidate>
                    <div class="mb-4">
                        <label for="full-name" class="block text-sm font-medium text-gray-700">שם מלא:</label>
                        <input type="text" id="full-name" name="full-name" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm p-2">
                    </div>
                    <div class="mb-4">
                        <label for="phone" class="block text-sm font-medium text-gray-700">מספר טלפון:</label>
                        <input type="tel" id="phone" name="phone" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm p-2">
                    </div>
                    <div class="mb-4">
                        <label for="pickup-point" class="block text-sm font-medium text-gray-700">בחר נקודת איסוף:</label>
                        <select id="pickup-point" name="pickup-point" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm p-2">
                            <option value="">-- בחר נקודה --</option>
                            <option value="יד בנימין">יד בנימין - אולם רימון</option>
                            <option value="גוש טלמונים">גוש טלמונים - שוקא- נריה</option>
                            <option value="שילה">שילה - הכהנים חומרי בניין</option>
                            <option value="כפר עציון">כפר עציון - ליד מאפיית טלמי</option>
                            <option value="מצפה יריחו">מצפה יריחו - אולם ביה"כ יעקב יגל</option>
                        </select>
                    </div>
                    <div class="mb-4">
                        <label for="payment-method" class="block text-sm font-medium text-gray-700">אופן התשלום:</label>
                        <select id="payment-method" name="payment-method" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm p-2">
                            <option value="">-- בחר אופן תשלום --</option>
                            <option value="שולם בפייבוקס">שולם בפייבוקס</option>
                            <option value="שולם בביט">שולם בביט</option>
                            <option value="תשלום באיסוף">תשלום באיסוף</option>
                        </select>
                    </div>
                    <div class="mb-4">
                        <label for="notes" class="block text-sm font-medium text-gray-700">הערות:</label>
                        <textarea id="notes" name="notes" rows="3" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm p-2"></textarea>
                    </div>

                    <div id="form-actions" class="flex flex-col gap-4 mt-6">
                         <button type="button" id="paybox-btn" class="btn bg-green-500 hover:bg-green-600">תשלום בפייבוקס ושליחת הזמנה</button>
                         <button type="button" id="bit-btn" class="btn bg-blue-500 hover:bg-blue-600">תשלום בביט ושליחת הזמנה</button>
                         <button type="submit" id="submit-btn" class="btn bg-gray-600 hover:bg-gray-700">שליחת הזמנה (תשלום באיסוף)</button>
                    </div>
                </form>
            </div>

            <footer class="text-center mt-8 text-gray-600">
                <p>לפרטים נוספים: אוריין שרעבי: <a href="tel:0545906461" class="text-blue-500 hover:underline">054-590-6461</a></p>
            </footer>
        </main>
    </div>

    <script>
        // --------- פרטי טופס הגוגל שלך - מעודכן! ---------
        const GOOGLE_FORM_URL = "https://docs.google.com/forms/d/e/1FAIpQLSfGJKTSKrUhpCiCGMqliH--nNeXsNDrEpj_YapoZiMJeOReJw/formResponse";

        const GOOGLE_FORM_ENTRIES = {
            fullName: "entry.81589714",
            phone: "entry.245204912",
            pickupPoint: "entry.774928603",
            paymentMethod: "entry.1169227334",
            notes: "entry.1176262750",
            orderDetails: "entry.2083350530",
            totalPrice: "entry.228151914"
        };
        // ---------------------------------------------


        const products = [
            { name: "אור חדש | A3 (42*29.7) לרוחב", price: 60, image: "https://lh3.googleusercontent.com/d/1g5O1SD_adhCbNBHIU4-XNdU0DlbhIPgx", promo: true },
            { name: "אור חדש 50*70", price: 150, image: "https://lh3.googleusercontent.com/d/1g5O1SD_adhCbNBHIU4-XNdU0DlbhIPgx", promo: false },
            { name: "אור חדש 100*150", price: 250, image: "https://lh3.googleusercontent.com/d/1g5O1SD_adhCbNBHIU4-XNdU0DlbhIPgx", promo: false },
            { name: "סוכת דוד הנופלת | A3 (42*29.7) לאורך", price: 60, image: "https://lh3.googleusercontent.com/d/11e_WYv2FyyrUrfRDRVQxn97PNYb53bH8", promo: true },
            { name: "אור גנוז | A3 (42*29.7) לאורך", price: 60, image: "https://lh3.googleusercontent.com/d/1w9FFAen7pSxw90b-p__i5kM2DUAWbnSM", promo: true },
            { name: "כל ישראל | A3 (42*29.7) לאורך", price: 60, image: "https://lh3.googleusercontent.com/d/1BqQcFUmL-5Ly3BKixFClJUgnIYFiural", promo: true },
            { name: "הגלה נא | A3 (42*29.7) לאורך", price: 60, image: "https://lh3.googleusercontent.com/d/1fFVHpWDch6ZF0klQW-JSCkawSY9-IU4d", promo: true },
            { name: "הרחמן אושפיזין | A3 (42*29.7) לאורך", price: 60, image: "https://lh3.googleusercontent.com/d/1PZF7PnD5I34xtaEuk6qvknlsvtpSiESI", promo: true },
            { name: "יבנה המקדש | A3 (42*29.7) לאורך", price: 60, image: "https://lh3.googleusercontent.com/d/1vX0LZPLlJq8Bc-JoN2psTsBfaeLOwhPk", promo: true },
            { name: "סוכה ולולב | A3 (42*29.7) לרוחב", price: 60, image: "https://lh3.googleusercontent.com/d/1cLrLxxiC4-DCkB1ND3sdd1ctHmVU7LcA", promo: true },
            { name: "עוד נתראה | A3 (42*29.7) לרוחב", price: 60, image: "https://lh3.googleusercontent.com/d/1LGulzK73yvqgT8pYGC4vs9xW9_rVr27r", promo: true },
            { name: "מדרש שפת אמת | A3 (42*29.7) לאורך", price: 60, image: "https://lh3.googleusercontent.com/d/1b81OPRvGQCaSDJ7Hz9oztsUGdEFehSPB", promo: true }
        ];

        const productList = document.getElementById('product-list');
        const totalItemsSpan = document.getElementById('total-items');
        const totalPriceSpan = document.getElementById('total-price');
        const orderForm = document.getElementById('order-form');
        const formContainer = orderForm.parentElement;

        products.forEach((product, index) => {
            const card = document.createElement('div');
            card.className = "card rounded-xl overflow-hidden shadow-lg transform transition-transform duration-300 hover:scale-105 p-4";
            const imageContainer = document.createElement('div');
            imageContainer.className = "w-full h-48 sm:h-64 mb-4 rounded-lg overflow-hidden";
            const image = document.createElement('img');
            image.src = product.image;
            image.alt = product.name;
            image.className = "w-full h-full object-cover";
            imageContainer.appendChild(image);
            card.appendChild(imageContainer);
            const content = document.createElement('div');
            content.className = "text-center";
            const name = document.createElement('h3');
            name.className = "text-lg font-bold mb-1 text-4b3832";
            name.textContent = product.name;
            content.appendChild(name);
            const price = document.createElement('p');
            price.className = "text-md font-semibold text-a0522d";
            price.textContent = `מחיר: ₪${product.price}`;
            content.appendChild(price);
            if (product.promo) {
                const promoText = document.createElement('p');
                promoText.className = "text-sm text-green-600 mt-1";
                promoText.textContent = "מבצע: 2 ב-110₪, 3 ב-160₪, 4 ב-200₪";
                content.appendChild(promoText);
            }
            const quantityContainer = document.createElement('div');
            quantityContainer.className = "mt-4 flex items-center justify-center";
            const quantityLabel = document.createElement('label');
            quantityLabel.className = "text-sm ml-2";
            quantityLabel.textContent = "כמות:";
            quantityContainer.appendChild(quantityLabel);
            const quantityInput = document.createElement('input');
            quantityInput.type = "number";
            quantityInput.value = 0;
            quantityInput.min = 0;
            quantityInput.max = 5;
            quantityInput.dataset.index = index;
            quantityInput.className = "w-16 text-center rounded-md border-gray-300 p-1";
            quantityContainer.appendChild(quantityInput);
            content.appendChild(quantityContainer);
            card.appendChild(content);
            productList.appendChild(card);
        });

        function calculateTotal() {
            let totalItems = 0;
            let totalPrice = 0;
            let promoItemsCount = 0;
            const quantities = document.querySelectorAll('input[type="number"]');
            quantities.forEach(input => {
                const index = input.dataset.index;
                const quantity = parseInt(input.value) || 0;
                const product = products[index];
                totalItems += quantity;
                if (product.promo) {
                    promoItemsCount += quantity;
                } else {
                    totalPrice += quantity * product.price;
                }
            });
            if (promoItemsCount > 0) {
                if (promoItemsCount === 1) { totalPrice += 60; } 
                else if (promoItemsCount === 2) { totalPrice += 110; } 
                else if (promoItemsCount === 3) { totalPrice += 160; } 
                else if (promoItemsCount >= 4) { totalPrice += 200 + (promoItemsCount - 4) * 50; }
            }
            totalItemsSpan.textContent = totalItems;
            totalPriceSpan.textContent = `₪${totalPrice}`;
        }

        document.querySelectorAll('input[type="number"]').forEach(input => {
            input.addEventListener('change', calculateTotal);
            input.addEventListener('input', calculateTotal);
        });
        
        const showSuccessMessage = () => {
            formContainer.innerHTML = `
                <div class="text-center p-8">
                    <svg class="w-16 h-16 mx-auto text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                    <h2 class="text-2xl font-bold mt-4 text-gray-800">ההזמנה נשלחה בהצלחה!</h2>
                    <p class="mt-2 text-gray-600">תודה רבה שבחרתם בקישוטי נגילה.</p>
                    <p class="mt-1 text-gray-600">ניצור קשר בהקדם. אפשר לסגור את החלון.</p>
                </div>
            `;
        };

        const handleFormSubmit = async () => {
             if (!orderForm.checkValidity()) {
                orderForm.querySelector(':invalid')?.focus();
                const feedbackDiv = document.createElement('div');
                feedbackDiv.textContent = "נא למלא את כל שדות החובה.";
                feedbackDiv.className = "text-red-500 text-center mb-4";
                orderForm.prepend(feedbackDiv);
                setTimeout(() => feedbackDiv.remove(), 3000);
                return false;
            }

            if (parseInt(totalItemsSpan.textContent) === 0) {
                const feedbackDiv = document.createElement('div');
                feedbackDiv.textContent = "אנא בחר/י לפחות מוצר אחד לפני שליחת ההזמנה.";
                feedbackDiv.className = "text-red-500 text-center mb-4";
                orderForm.prepend(feedbackDiv);
                setTimeout(() => feedbackDiv.remove(), 3000);
                return false;
            }

            document.querySelectorAll('#form-actions button').forEach(b => b.disabled = true);
            
            const formData = new FormData();
            formData.append(GOOGLE_FORM_ENTRIES.fullName, document.getElementById('full-name').value);
            formData.append(GOOGLE_FORM_ENTRIES.phone, document.getElementById('phone').value);
            formData.append(GOOGLE_FORM_ENTRIES.pickupPoint, document.getElementById('pickup-point').value);
            formData.append(GOOGLE_FORM_ENTRIES.paymentMethod, document.getElementById('payment-method').value);
            formData.append(GOOGLE_FORM_ENTRIES.notes, document.getElementById('notes').value);
            
            let orderDetailsText = "";
            products.forEach((p, index) => {
                const quantity = parseInt(document.querySelector(`input[data-index="${index}"]`).value) || 0;
                if (quantity > 0) orderDetailsText += `- ${p.name}: ${quantity} יחידות\n`;
            });
            formData.append(GOOGLE_FORM_ENTRIES.orderDetails, orderDetailsText);
            formData.append(GOOGLE_FORM_ENTRIES.totalPrice, totalPriceSpan.textContent);

            try {
                await fetch(GOOGLE_FORM_URL, { method: 'POST', body: formData, mode: 'no-cors' });
                return true;
            } catch (error) {
                console.error('Error submitting form:', error);
                const feedbackDiv = document.createElement('div');
                feedbackDiv.textContent = "אירעה שגיאה בשליחת ההזמנה. אנא נסה/י שוב.";
                feedbackDiv.className = "text-red-500 text-center mb-4";
                orderForm.prepend(feedbackDiv);
                document.querySelectorAll('#form-actions button').forEach(b => b.disabled = false);
                return false;
            }
        };

        orderForm.addEventListener('submit', async (e) => {
            e.preventDefault();
            const success = await handleFormSubmit();
            if (success) showSuccessMessage();
        });

        document.getElementById('paybox-btn').addEventListener('click', async () => {
            document.getElementById('payment-method').value = "שולם בפייבוקס";
            const success = await handleFormSubmit();
            if (success) {
                window.open("https://links.payboxapp.com/pCOpNiinPWb", '_blank');
                showSuccessMessage();
            }
        });

        document.getElementById('bit-btn').addEventListener('click', async () => {
            document.getElementById('payment-method').value = "שולם בביט";
            const success = await handleFormSubmit();
            if (success) {
                const totalPrice = totalPriceSpan.textContent.substring(1);
                if (parseInt(totalPrice) > 0) {
                    window.open(`https://www.bitpay.co.il/go/bit/?to=0545906461&amount=${totalPrice}`, '_blank');
                }
                showSuccessMessage();
            }
        });
    </script>
</body>
</html>

