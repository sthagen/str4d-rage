# Copyright 2020 Jack Grigg
#
# Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
# http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
# option. This file may not be copied, modified, or distributed
# except according to those terms.

### Localization for strings in the rage CLI tools

## Terms (not to be localized)

-age = age
-age-plugin- = age-plugin-
-rage = rage
-rage-keygen = rage-keygen
-stdin = "-"
-recipient-prefix = age1
-identity-prefix = AGE-SECRET-KEY-1
-armor-pem-type = AGE ENCRYPTED FILE

-rage-mount = rage-mount

-ssh-rsa = ssh-rsa
-ssh-ed25519 = ssh-ed25519
-ssh-authorized-keys = authorized_keys
-dot-keys = .keys
-ssh = ssh(1)
-authorized-keys-file-format = AUTHORIZED_KEYS FILE FORMAT
-sshd = sshd(8)
-ssh-agent = ssh-agent(1)

-example = example
-example-r = age1example1
-example-i = AGE-PLUGIN-EXAMPLE-1

-yubikey = yubikey

## CLI flags (not to be localized)

-flag-armor = -a/--armor
-flag-decrypt = -d/--decrypt
-flag-encrypt = -e/--encrypt
-flag-identity = -i/--identity
-flag-output = -o/--output
-flag-recipient = -r/--recipient
-flag-recipients-file = -R/--recipients-file
-flag-passphrase = -p/--passphrase
-flag-plugin-name = -j
-flag-max-work-factor = --max-work-factor
-flag-unstable = --features unstable

-flag-convert = -y

-flag-mnt-types = -t/--types

## Usage

usage-header = ИСПОЛЬЗОВАНИЕ

recipient = ПОЛУЧАТЕЛЬ
recipients-file = ПУТЬ
identity = ИДЕНТИФИКАТОР
plugin-name = НАЗВАНИЕ-ПЛАГИНА
input = ВХОД
output = ВЫХОД

args-header = АРГУМЕНТЫ

help-arg-input = Путь к файлу для чтения.

flags-header = Опции

help-flag-help = Печатать это сообщение справки и выходить.
help-flag-version = Печатать информацию о версии и выходить.
help-flag-encrypt = Шифровать ввод (по умолчанию).
help-flag-decrypt = Расшифровать ввод.
help-flag-passphrase = Шифровать с помощью пароля вместо получателей.
help-flag-max-work-factor = Максимальный коэффициент работы для дешифрования пароля.
help-flag-armor = Шифровать в формате PEM.
help-flag-recipient = Шифровать для указанного {recipient}. Можно повторять.
help-flag-recipients-file = Шифровать для получателей, перечисленных в {recipients-file}. Можно повторять.
help-flag-identity = Использовать файл идентификации в {identity}. Можно повторять.
help-flag-plugin-name = Использовать плагин {-age-plugin-}{plugin-name} в его стандартном режиме для идентификации.
help-flag-output = Записать результат в файл по пути {output}.

rage-after-help-content =
    {input} по умолчанию использует стандартный ввод, а {output} - стандартный вывод.
    Если {output} существует, он будет перезаписан.

    {recipient} может быть:
    - Публичным ключом {-age}, как сгенерировано {$keygen_name} ({$example_age_pubkey}).
    - Публичным ключом SSH ({$example_ssh_pubkey}).

    {recipients-file} это путь к файлу, содержащему получателей {-age}, по одному на строку
    (игнорируются комментарии с префиксом "#" и пустые строки). {-stdin} может
    использоваться для чтения получателей со стандартного ввода.

    {identity} это путь к файлу с идентификаторами {-age}, по одному на строку
    (игнорируются комментарии с префиксом "#" и пустые строки), или к файлу
    ключа SSH. Файлы идентификации {-age}, зашифрованные с помощью пароля, могут
    использоваться как файлы идентификации. ожно указать несколько идентификаторов,
    неиспользуемые будут игнорироваться. {-stdin} может использоваться для чтения
    идентификаторов со стандартного ввода.

rage-after-help-example =
    Пример:
    {"  "}{$example_a}
    {"  "}{tty-pubkey}: {$example_a_output}
    {"  "}{$example_b}
    {"  "}{$example_c}

keygen-help-flag-output = {help-flag-output} По умолчанию использует стандартный вывод.
keygen-help-flag-convert = Преобразовать файл идентификации в файл получателей.

## Formatting

warning-msg = Внимание: {$warning}

## Keygen messages

tty-pubkey = Публичный ключ
identity-file-created = создан
identity-file-pubkey = публичный ключ

## Encryption messages

autogenerated-passphrase = Использование автоматически сгенерированного пароля:
type-passphrase = Введите пароль
prompt-passphrase = Пароль

warn-double-encrypting = Шифрование уже зашифрованного файла

## General errors

err-failed-to-open-input = Не удалось открыть входной файл: {$err}
err-failed-to-open-output = Не удалось открыть выходной файл: {$err}
err-failed-to-read-input = Не удалось прочитать из входного файла: {$err}
err-failed-to-write-output = Не удалось записать в выходной файл: {$err}
err-identity-ambiguous = {-flag-identity} требует либо {-flag-encrypt}, либо {-flag-decrypt}.
err-mixed-encrypt-decrypt = {-flag-encrypt} не может использоваться вместе с {-flag-decrypt}.
err-passphrase-timed-out = Истекло время ожидания ввода пароля.
err-same-input-and-output = Входной и выходной файлы совпадают '{$filename}'.

err-ux-A = {-rage} не сделал то, что вы ожидали? Могла ли быть полезнее ошибка?
err-ux-B = Сообщите нам
# Поставьте здесь пробелы (len(A) - len(B) - 32).
err-ux-C = {"                     "}

## Encryption errors

err-enc-broken-stdout = Не удалось записать в stdout: {$err}
rec-enc-broken-stdout = Вы передаете данные в программу, которая не читает из stdin?

err-enc-broken-file = Не удалось записать в файл: {$err}

rec-enc-missing-recipients = Вы забыли указать {-flag-recipient}?

err-enc-mixed-identity-passphrase = {-flag-identity} не может использоваться с {-flag-passphrase}.
err-enc-mixed-recipient-passphrase = {-flag-recipient} не может использоваться с {-flag-passphrase}.
err-enc-mixed-recipients-file-passphrase = {-flag-recipients-file} не может использоваться с {-flag-passphrase}.
err-enc-passphrase-without-file = Файл для шифрования должен быть передан как аргумент при использовании {-flag-passphrase}.

err-enc-plugin-name-flag = {-flag-plugin-name} не может использоваться с {-flag-encrypt}.

## Decryption errors

err-detected-powershell-corruption = Похоже, что этот файл был поврежден перенаправлением PowerShell.
rec-detected-powershell-corruption = Рассмотрите возможность использования {-flag-output} или {-flag-armor} для шифрования файлов в PowerShell.

rec-dec-excessive-work = Для расшифровки попробуйте снова с {-flag-max-work-factor} {$wf}

err-dec-armor-flag = {-flag-armor} не может использоваться с {-flag-decrypt}.
rec-dec-armor-flag = Обратите внимание, что бронированные файлы определяются автоматически.

err-dec-missing-identities = Отсутствуют идентификаторы.
rec-dec-missing-identities = Вы забыли указать {-flag-identity}?
rec-dec-missing-identities-stdin = Вы забыли предоставить идентификатор через стандартный ввод?

err-dec-mixed-identity-passphrase = {-flag-identity} не может использоваться с файлами, зашифрованными паролем.

err-mixed-identity-and-plugin-name = {-flag-identity} не может использоваться с {-flag-plugin-name}.

err-dec-passphrase-flag = {-flag-passphrase} не может использоваться с {-flag-decrypt}.
rec-dec-passphrase-flag = Обратите внимание, что файлы, зашифрованные паролем, обнаруживаются автоматически.

err-dec-passphrase-without-file-win =
    Этот файл требует пароля, и в Windows файл для расшифровки
    должен быть передан как позиционный аргумент при расшифровке с паролем.

err-dec-recipient-flag = {-flag-recipient} не может использоваться с {-flag-decrypt}.
err-dec-recipients-file-flag = {-flag-recipients-file} не может использоваться с {-flag-decrypt}.
rec-dec-recipient-flag = Вы имели в виду использовать {-flag-identity} для указания закрытого ключа?

## rage-mount strings

mnt-filename = ИМЯ_ФАЙЛА
mnt-mountpoint = ТОЧКА_МОНТИРОВАНИЯ
mnt-types = ТИПЫ

help-arg-mnt-filename = Зашифрованная файловая система для монтирования.
help-arg-mnt-mountpoint = Директория для монтирования файловой системы.
help-arg-mnt-types = Указывает тип файловой системы (один из {$types}).

info-decrypting = Расшифровка {$filename}
info-mounting-as-fuse = Монтирование как файловая система FUSE

err-mnt-missing-filename = Отсутствует имя файла.
err-mnt-missing-mountpoint = Отсутствует точка монтирования
err-mnt-missing-types = Отсутствует {-flag-mnt-types}.
err-mnt-unknown-type = Неизвестный тип файловой системы "{$fs_type}"

## Unstable features

test-unstable = Чтобы протестировать это, соберите {-rage} с {-flag-unstable}.

## rage manpage

recipients = ПОЛУЧАТЕЛИ
identities = ИДЕНТИФИКАТОРЫ

man-rage-about = Простой, безопасный и современный инструмент шифрования

man-rage-description =
    {-rage} шифрует или расшифровывает {input} в {output}. Аргумент {input}
    необязателен и по умолчанию использует стандартный ввод.
    Может быть указан только один файл {input}. Если {-flag-output}
    не указан, {output} по умолчанию использует стандартный вывод.

    Если указан {-flag-passphrase}, файл шифруется с паролем, запрашиваемым в
    интерактивном режиме. В противном случае он шифруется для одного или
    нескольких {recipients}, указанных с помощью {-flag-recipient} или
    {-flag-recipients-file}. Каждый получатель может расшифровать файл.

    В режиме {-flag-decrypt}, файлы, зашифрованные паролем, обнаруживаются
    автоматически, и пароль запрашивается в интерактивном режиме. В противном случае используются
    один или несколько {identities}, указанных с помощью {-flag-identity}, для расшифровки файла

    Зашифрованные файлы {-age} являются бинарными и не поддаются изменениям,  с приблизительно 200 байтами
    накладных расходов на каждого получателя, плюс 16 байт на каждые 64КБ исходного текста.

man-rage-flag-output =
    Записать зашифрованный или расшифрованный файл в {output} вместо стандартного вывода.
    Если {output} уже существует, он будет перезаписан.

    Если шифрование производится без {-flag-armor}, {-rage} откажется выводить двоичные данные в TTY.
    Это можно принудительно указать, используя {-stdin} в качестве {output}

man-rage-encryption-options = Опции шифрования

man-rage-flag-encrypt =
    Зашифровать {input} в {output}. Это значение по умолчанию.

man-rage-flag-recipient =
    Зашифровать для явно указанного {recipient}. Смотрите раздел
    {man-rage-recipients-and-identities-heading} для возможных
    форматов получателей.

    Этот параметр можно повторять и комбинировать с другими флагами получателей,
    и файл может быть расшифрован всеми предоставленными получателями независимо.

man-rage-flag-recipients-file =
    Зашифровать для {recipients}, перечисленных в файле по адресу {recipients-file}, по одному на строку.
    Пустые строки и строки, начинающиеся с "#", игнорируются как комментарии.

    Если {recipients-file} является {-stdin}, получатели читаются со стандартного ввода.
    В этом случае должен быть указан аргумент {input}.

    Этот параметр можно повторять и комбинировать с другими флагами получателей,
    и файл может быть расшифрован всеми предоставленными получателями независимо.

man-rage-flag-passphrase =
    Шифровать с паролем, запрашиваемым в интерактивном режиме из терминала.
    {-rage} предложит автоматически сгенерировать безопасный пароль.

    Этот параметр не может использоваться с другими флагами получателей.

man-rage-flag-armor =
    Зашифровать только в ASCII "бронированное" кодирование.

    {-age} armor - это строгая версия PEM с типом "{-armor-pem-type}",
    канонический "строгий" Base64, без заголовков и без поддержки начальных и
    конечных дополнительных данных.

    Расшифровка прозрачно обнаруживает и декодирует ASCII бронирование.

man-rage-flag-identity-encrypt =
    Шифровать для {recipients}, соответствующих {identities}, перечисленным в
    файле по адресу {identity}. Это эквивалентно преобразованию файла по адресу {identity}
    в файл получателей с помощью '{-rage-keygen} {-flag-convert}', а затем передачи его в
    {-flag-recipients-file}.

    Для формата {identity} смотрите определение {-flag-identity} в
    разделе {man-rage-decryption-options}.

    При использовании {-flag-identity} в режиме шифрования необходимо явно
    указать {-flag-encrypt}, чтобы избежать путаницы.

man-rage-flag-plugin-encrypt =
    Шифровать, используя плагин без данных {plugin-name}.

    Это эквивалентно использованию {-flag-identity} с файлом, который содержит
    один плагин {identity}, не кодирующий специфические для плагина данные.

    При использовании {-flag-plugin-name} в режиме шифрования необходимо явно
    указать {-flag-encrypt}, чтобы избежать путаницы.

man-rage-decryption-options = Опции расшифровки

man-rage-flag-decrypt =
    Расшифровать {input} в {output}.

    Если {input} зашифрован паролем, это будет автоматически обнаружено,
    и пароль будет запрошен в интерактивном режиме. В противном случае
    используются {identities}, указанные с помощью {-flag-identity}.

    ASCII-армирование распознается и декодируется прозрачно.

man-rage-flag-identity-decrypt =
    Расшифровать, используя {identities} в {identity}.

    {identity} может быть одним из следующих:

    a. Файл, перечисляющий {identities}, по одному на строку. Пустые строки и
    строки, начинающиеся с "#", игнорируются как комментарии.

    b. Файл age, зашифрованный паролем, содержащий {identities}, по одному на
    строку, как указано выше. Пароль запрашивается в интерактивном режиме.
    Обратите внимание, что файлы идентификации, защищенные паролем, не нужны в
    большинстве случаев использования, где доступ к зашифрованному файлу
    идентификации подразумевает доступ ко всей системе.

    c. Файл частного ключа SSH в формате PKCS#1, PKCS#8 или OpenSSH. Если
    частный ключ защищен паролем, пароль запрашивается в интерактивном режиме
    только в случае, если идентификация SSH соответствует файлу. Смотрите
    раздел {man-rage-ssh-keys-heading} для получения дополнительной информации,
    включая поддерживаемые типы ключей.

    d. {-stdin}, что приводит к чтению одного из вышеуказанных вариантов со стандартного ввода.
    В этом случае должен быть указан аргумент {input}.

    Этот параметр можно повторять. Идентификаторы пробуются в том порядке, в
    котором они предоставлены, и используется первый, соответствующий одному из
    получателей файла. Неиспользуемые идентификаторы игнорируются, но это
    ошибка, если файл {input} зашифрован паролем и указан {-flag-identity}.

man-rage-flag-plugin-decrypt =
    Расшифровать с использованием плагина без данных {plugin-name}.

    Это эквивалентно использованию {-flag-identity} с файлом, который содержит
    один плагин {identity}, не кодирующий данные, специфичные для плагина.

man-rage-recipients-and-identities-heading = ПОЛУЧАТЕЛИ И ИДЕНТИФИКАТОРЫ
man-rage-recipients-and-identities =
    {recipients} - это публичные значения, например, публичный ключ, для шифрования файла.
    {identities} - это частные значения, например, частный ключ, позволяющие расшифровать файл,
    зашифрованный для соответствующего {recipient}.

man-rage-native-x25519-keys-heading = Родные ключи X25519
man-rage-native-x25519-keys =
    Родные пары ключей {-age} генерируются с помощью {-rage-keygen}(1) и
    обеспечивают небольшие кодировки и сильное шифрование на основе X25519. Они
    являются рекомендуемым типом получателя для большинства приложений.

    Кодировка {recipient} начинается с "{-recipient-prefix}" и выглядит
    следующим образом:

    {"    "}{$example_age_recipient}

    Кодировка {identity} начинается с "{-identity-prefix}" и выглядит
    следующим образом:

    {"    "}{$example_age_identity}

    Зашифрованный файл не может быть связан с родным получателем, для которого
    он зашифрован, без доступа к соответствующему идентификатору.

man-rage-ssh-keys-heading = Ключи SSH
man-rage-ssh-keys =
    В качестве удобной функции {-rage} также поддерживает шифрование для ключей
    RSA или Ed25519 {-ssh}. Ключи RSA должны быть не менее 2048 бит. Эта
    функция использует более сложную криптографию и должна использоваться
    только тогда, когда для получателя недоступен родной ключ. Обратите внимание,
    что ключи SSH могут не быть защищены в долгосрочной перспективе получателем,
    так как они могут быть отозваны при использовании только для аутентификации.

    Кодировка {recipient} - это публичный ключ SSH в формате "{-ssh-authorized-keys}"
    (см. раздел "{-authorized-keys-file-format}" {-sshd}), начинающийся с
    "{-ssh-rsa}" или "{-ssh-ed25519}", как следующее:

    {"    "}{$example_ssh_rsa}
    {"    "}{$example_ssh_ed25519}

    Комментарий в конце строки, если он присутствует, игнорируется.

    В файлах получателей, переданных в {-flag-recipients-file},
    неподдерживаемые, но действительные публичные ключи SSH игнорируются с
    предупреждением, чтобы облегчить использование файлов "
    {-ssh-authorized-keys}" или GitHub "{-dot-keys}". (См. {man-examples-heading}.)

    {identity} - это _файл_ частного ключа SSH, передаваемый индивидуально в
    {-flag-identity}. Обратите внимание, что ключи, хранящиеся на аппаратных
    токенах, таких как YubiKeys, или доступные через {-ssh-agent}, не поддерживаются.

    Зашифрованный файл _может_ быть связан с публичным ключом SSH, для которого он был зашифрован.
    Это сделано для того, чтобы {-rage} мог идентифицировать правильный частный ключ SSH
    до запроса его пароля, если таковой имеется.

man-rage-plugins-heading = Плагины
man-rage-plugins =
    {-rage} может быть расширен с помощью плагинов. Плагин загружается только в случае,
    если указан соответствующий {recipient} или {identity}. (Простая расшифровка файла,
    зашифрованного с помощью плагина, не приведет к его загрузке по соображениям безопасности, среди прочего.)

    {recipient} для плагина с именем "{-example}" начинается с "{-example-r}",
    в то время как {identity} начинается с "{-example-i}". Оба они кодируют
    произвольные данные, специфичные для плагина, и генерируются плагином.

    Когда указан один из них, {-rage} ищет {-age-plugin-}{-example} в PATH
    и выполняет его для выполнения шифрования или расшифровки заголовка файла.
    Плагин может запросить ввод данных от пользователя через {-rage} для
    завершения операции.

    Плагины могут свободно комбинироваться с другими плагинами или ключами, поддерживаемыми нативно.

    Плагин не ограничивается только шифрованием или расшифровкой файлов, предназначенных
    для него или сгенерированных им. Например, плагин может использоваться для
    расшифровки файлов, зашифрованных для родного {recipient} X25519 или даже с
    паролем. Аналогично, плагин может зашифровать файл таким образом, чтобы его
    можно было расшифровать без использования любого плагина.

    Для плагинов, для которых различие {identity}/{recipient} не имеет смысла
    (например, для плагина симметричного шифрования), могут генерироваться
    только {identity}, и пользователю может быть дана инструкция выполнять
    шифрование с флагами {-flag-encrypt} и {-flag-identity}. Для плагинов, для
    которых концепция отдельных идентификаторов не имеет смысла (например,
    плагин шифрования паролем), пользователю может быть дана инструкция
    использовать флаг {-flag-plugin-name}.

man-examples-heading = ПРИМЕРЫ

man-rage-example-single = Сгенерировать новый идентификатор, зашифровать данные и расшифровать
man-rage-example-enc-multiple = Зашифровать {$input} для нескольких получателей и вывести в {$output}
man-rage-example-enc-list = Зашифровать для списка получателей
man-rage-example-password = Зашифровать и расшифровать файл с использованием пароля
man-rage-example-identity-passphrase = Зашифровать и расшифровать с файлом идентификации, защищенным паролем
man-rage-example-ssh = Зашифровать и расшифровать с публичным ключом SSH
man-rage-example-yubikey = Зашифровать и расшифровать с {-age-plugin-}{-yubikey}
man-rage-example-yubikey-setup = Запустить интерактивную настройку, сгенерировать файл идентификации и получить получателя.
man-rage-example-enc-github = Зашифровать для SSH-ключей пользователя GitHub

man-see-also-heading = СМОТРИТЕ ТАКЖЕ

## rage-keygen manpage

man-keygen-about = Генерировать пары ключей шифрования, совместимые с age

man-keygen-description =
    {-rage-keygen} генерирует новую родную пару ключей {-age} и выводит
    идентификатор в стандартный вывод или в файл {output}.
    Вывод включает публичный ключ и текущее время в качестве комментариев.

    Если вывод не идет в терминал, {-rage-keygen} печатает публичный ключ в
    стандартный поток ошибок.

man-keygen-flag-output =
    Записать идентификатор в {output} вместо стандартного вывода.

    Если {output} уже существует, он не будет перезаписан.

man-keygen-flag-convert =
    RПрочитать файл идентификации из {input} или со стандартного ввода и вывести
    соответствующего/их получателя/ей, по одному на строку, без комментариев.

man-keygen-example-stdout = Сгенерировать новый идентификатор
man-keygen-example-file = Записать новый идентификатор в "{$filename}"
man-keygen-example-convert = Преобразовать идентификатор в получателя

## rage-mount manpage

man-mount-about = Монтировать зашифрованную файловую систему {-age}

man-mount-description =
    {-rage-mount} расшифровывает зашифрованную файловую систему {-age} в
    {mnt-filename} на лету и монтирует ее как директорию в локальной файловой
    системе в {mnt-mountpoint}.

    Файлы, зашифрованные паролем, обнаруживаются автоматически, и пароль
    запрашивается в интерактивном режиме. В противном случае используется один
    или несколько {identities}, указанных с помощью {-flag-identity}, для
    расшифровки файла.

    Предыдущее содержимое (если оно есть) и владелец и режим {mnt-mountpoint}
    становятся невидимыми, и пока эта файловая система остается смонтированной,
    путь {mnt-mountpoint} относится к корню файловой системы на {mnt-filename}.

man-mount-flag-types =
    Установить тип файловой системы. В настоящее время поддерживаются следующие типы: {$types}.

    Этот параметр обязателен. {-rage-mount} не пытается угадать формат файловой системы.

    В теории может поддерживаться любой эффективно доступный формат файловой системы.
    На данный момент {-rage-mount} поддерживает только доступные для поиска форматы архивов.

man-mount-example-identity = Монтирование архива, зашифрованного для получателя
man-mount-example-passphrase = Монтирование архива, зашифрованного паролем
