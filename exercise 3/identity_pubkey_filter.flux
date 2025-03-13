import "array"

valid_values = ['141vSYKGRPNGieSrGJy8EeDVBcbjSr6aWkimNgrNZ6xN', 'FT9QgTVo375TgDAQusTgpsfXqTosCJLfrBpoVdcbnhtS', 'J7v9ndmcoBuo9to2MnHegLnBkC9x3SAVbQBJo5MMJrN1', 'J5BJHkRuGpWwfkm1Bxau6QFge4dTausFzdgvj3vzipuv', 'ftv4sJhKxRcESHeAh2W6RWEKzCJw5Nq7HdrhamoVbGt', 'B8T2dbvYaM4gJfpLLbuBScuWKFhnG6KspRK72v5D5uoK', 'C7cp6FA3hctfvH2kPUYttoJTNowrghE7xJZwS8yxCp1o', 't3ChqFTKHUFdjNPDf8CuhFGwkwzqR47LL7sDbeU99XD', '5D1fNXzvv5NjV1ysLjirC4WY92RNsVH18vjmcszZd8on', 'testr323vRz7Et5QvgEYxd3JrCSmngHNUgpvCxjQGqr', 'HZX4MWsSDzRerGuV6kgtj5sGM3dcX9doaiN7qr5y9MAw', 'puMPKindCwo2b279wFUTHZbR3CncfEWX5ySk2ibqQ3U', 'mtvxq35ST4CnAiWuQeF6vLucJnNeut3wSFZs63so9jG', 'mtvxgXNDuGUdFrVWLRQREveyViydC2h8vY2qTbapCRK', 'F1REirtRdV1famCks1tLZ8ZpxKWxPzT8Ky7d19cA1K1N', '7heQNXEtxSv3wV8sNbuQsDN5xNGbbpLvHGiyXuJxEf7n', 'Ft5fbkqNa76vnsjYNwjDZUXoTWpP7VYm3mtsaQckQADN', 'td3n5NGhP7JKWrL638gzau3NY7mF4K3ztZww3GkpywJ', '4UCZB7zfquCVN7GafWETFVLTceNH3nm2mndyHeDuSggC', 'td2GGWDsCJ6LvjN89oLJvmrDwE14neNrbqQ9s3tVkPy', 'mtvxDvucSt3puDyg7fXiMg1q9vtiASCvove92HPv5fE', 'mtvx7uJE3NyrgFmePfcusTzpjj9HQhNDW9dkzPudvxX', 'F1jcLYJ1s8k4oYVy51J2RvYGh4sB1kWsUB2NaDrg6ejL', 'Can7hzmTxAuBBtaaMDCMPWwyYxMJLuXd5YVmPEDBTs1J', '2Nnw9RZvT2qeKq74rkw8hWDJZUDSKxiBarmQMFxHzzCt', 'E3U9iR3AcXm7WKyPm4PaWZjPKt299izPDQhVHxyePLDx', '2CY8VXH2jummjSmwcusSj2jGMiaHE4eo7WQ9LScxykvt', 'f1x5NQFQJxXVZWoig2VWeqDhx3D3oLzbDTrDsXVsKbD', 'ftvyBVP3Hb5GPVH6yoMcaWRxMVQsF1a24pPUNuJL4qw', '6ZEbKFxTjEKGC9HUqzy9z4ccJ8Aq3ktPKEzHGDosQJo4', 'D71JRzjPpHipt8NAWnWb3yZoXezbkGXqSf7TVCir6wvT', '2ZZkgKcBfp4tW8qCLj2yjxRYh9CuvEVJWb6e2KKS91Mj', 'Dg5E8ktH4GWfKL1vuVTdqZJEkAEgtV8LqmSXyLJuZ3q1', 'ftvA1m6D5PtkkhMLyP4mnVpR5n7do37q11rzaJmx2Ya', '5qzgRKGnpZs27aqR3tkZp2HJ8ZXoxTBjYoayqVG1QKbs', 'Hwvxg5dacM8SbpwPDiZyxNNLpAid9v7BQZDef1Fhug2P', '4eDS5fB3keUA5qxwphZaCDGUqfrmZSry1E2t9bjzUPHS', '9cZua5prTSEfednQQc9RkEPpbKDCh1AwnTzv3hE1eq3i', '5TkrtJfHoX85sti8xSVvfggVV9SDvhjYjiXe9PqMJVN9', 'ARhax8ZwKr4xTkRB4HcU5ncWtGoVXCbCa2x98QhTpihw', 'CnwQFPxFz17VuMqaPjmF2CWQumDxCKGa26d9yReHim2q', 'TEviKS3m7KsFJtY7Kf2X6Jq2qfSPZJcgxWfKsaCfdaK', '8SQEcP4FaYQySktNQeyxF3w8pvArx3oMEh7fPrzkN9pu', 'GRD4cpy2j7f6u15jQXpvwcPCetrabEx6RKdVqj7NSBe8', 'J5e4xh1V7zGZnHq9rYfsowFJghoc9SEZWFfiCdbc8FF1', 'ftv5SNk5123xopjontQGdtU4mRRcXkVWcP22KRqnaTe', 'ftv6hQ1FeKALrgosQvhsHCyQbTj5MYh8qJErua6fgTj', 'ftvTrEYqy8qpXJ4otEyvi5vCjcvSvs1rQvDgEwBjeuo', 'ftvFsoC7K2z92PbaX1Dcah9qeqm92GKLu15GeJJMibf', 'ftvRzeBKtWKvsf3kBc28rb27bna6RzGLgFytC5UCu5i', 'ftvQCihs8QAvdsiUVct8L3Uwh7KdjoCcBf9iZ3kLtbu', 'ftvA2mD4E2RK9tjhq4pGapB7HACabCC6NNmNdDRFBeL', 'ftvTs9XZCfkexQzpXKocrifY68p6JSXCuGdThvGSL1p', 'ftv2rTJc8iMjYu9Qj2ALdQQEd3zEqx7krCv4iCdbZxr', 'ftvHdEPj4gKgAbRocsWkLzAFqUnXHg2vGKjdqBMXSPY', 'ftvSmmZpeee4dDCgj39Y8tCjCYcRh3v1kqhv9nYKZW1', 'ftvQWJwptJibaxnfUauPKWqmRFfsj4ytA554xPwyDYc', 'ftv57swkKeLYEnU34Bvq2yuhwoVQvsdVcXwnYHjPN2S', 'ftvDiUyTEmk472TVkT5kb8w4W19HrHf1EpPZ8cUMvue', 'ftv922mwfs5UwJVY9MDHuH99jKicA3AtXszXjZLQcAh', 'ftv9qWHJ1uSMKmMrqBs9kuzc5LS2d7fi5MLwsd3ZKSG', 'ftvLgPkw24KYN4fD6bKWANsJPNDuhykTCJFYgzZnqBN', 'ftvHWQN2YKx5yWkkSBTkLmFM7RDrn8tyHrnfup4zQsP', 'ftvGart2zwyS1h8cJtnV8wTv3zHJHfVnUvg4yFmGCiW', 'ftvJvJPzsgNq7BMWz8XiwKyXY9WCiWy387SThRCxtVo', 'ftvTnhZY6AYF5MKUWLo5XKLSaX2ijmn17NzTPMs4q7T', 'ftv18WQJKN7J3Zxdx1PB8HprdbG5qZqsy5wiZjLi7sN', 'ftvPJsyPci6HqcvL9if5fxWE31UCDkpM7GntfSvvA3L', 'ftv28xqVtvs3aHQRyJHNuaBxvrq4irXKQitUsgSnwSE', 'ftvHZyANNJfzKmPbMoBPvHusZtHTTxnmnB4LCixCVu6', 'ftvE5Hkp6FQe79FJVbwtsu44fnGnVrKzCmVXt6DWk25', 'ftvQdmcZNTuANKkBnsdQu8Dqjdy23DBzwATKzufqPXF', 'ftvLhCznWsLLDPtNv3ehcG298gViQmz8xP8hmf4exDK', 'ftv2cymu4ihwGqNVm9aJrmfapiMiAg6K2Qbrg4H6uQC', 'ftvDCypwhzChNNHTUesTww6jpxre5kn9kX8jCEaB5Tv', 'ftv6EunPnmuzgyqTHnnTQUT7jchHCUdztQkFvqeDdCU', 'ftvDSGhcu76VKgn82AC1Aan2sBrXV2apbnw1StKdpv8', 'ftv3YXETRf3ZUkSnTaYXQv8Gjwcg3dERLfZ6HepY4mD', 'ftvQ7jKYGcaaSfkdV9mjpCQiYi4wFjpg6Rkrqwv6fVX', 'ftv5aWPj5He8fbfKwskozYSwMvAFfVsuJhxxdRprmmW', 'ftv195eCfVGpj4DSbF62w8eEyTcHiqoj4ktKQGs1vCZ', 'ftvHSshcbHvcMUawWvtq7sVoTsXYHDiJct9oy4mvH6Q', 'ftvV6HjY4zV4MRkLRFk8y5vXTUYd6QFMHoshqq3Szvh', 'ftvLAjG5VEm67tqU1KVeL3Cv5eStLWcvuH9g2AegMgC', 'ftv2AwqaK87gFoY9SgySuPjjdFeZha97R3N3m2bjbcM', 'ftvTStwmHi1iajB2uzjaAyTpLM5h2yqAztNxeMuu5tV', 'ftvDkddMqF5f2X2k8SsAyZzKPxAgJPbUapgqT8tDJNj', 'ftvRBHpci2yrgoZgivMoVUzsKiFnv5pLjCvyfC7oki9', 'ftvExjeamLoquZgqhb8Es5Ck5ivgGzh6aASX9WgPwGV', 'DRnvWydSjzDkhN1AsZ5oTm8nqNCmxtCxJ8T1sXk5kCmb', '4ECwQYdgfcDfFT2Qkboe591xJKTMBeXt5dAizzuSWzVr', 'vawktMPYeGD5aZhfXBeipw6GDvB7YUJH7fkkKjCmHva', 'HEbMY624UhDGm1Qhy6neKSyi3bQjQ2RidSTyt7ARK8RW', 'ftvVQoCwXzBxUPkFcpG1xAdxN4zQCHU4A8ktGSaGUL3', '9P5sFULhNktpQxEST2Wiw6zBH4aJrANCjui8k5FhwcjH', 'BNa6rYkNdwWpXSzPTL8yf8tiCZ4DqzT5orRh2j7GuWB9', 'ftvYEJHsEHwe96fzzZDcB4FLUEGGJ5DK4VUqJ11JmFt', 'ftvhEBtDbSJvP58MaP4cnRid8zQHBpKuQhpubqf7nUR', 'ftvWsz6AqWotbGz7EX2Pk6MvjCpQqR9R6Uh6PgS1unm', 'ftvuiomtpNHGGiTQyaNcQyoRjeSoyfoKWQXZ6tbjNHf']

filterValidIdentityPubkey = (r) => array.contains(value: r["identityPubkey"], set: valid_values)
