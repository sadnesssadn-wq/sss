.class public Lcom/zoho/livechat/android/utils/MarkDownUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final REGEX_BLOCKQUOTE:Ljava/lang/String; = "(?:^|\\n)(!(.+?))(?:\\n|$)"

.field private static final REGEX_BOLD:Ljava/lang/String; = "(^|\\s|[{\\[])\\*(\\S.*?\\S *)?\\*(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

.field private static final REGEX_BULLET:Ljava/lang/String; = "(^\\s|\\n|^)((\\*) ((.*?\\S *)*))"

.field private static final REGEX_CODEBLOCK:Ljava/lang/String; = "(^|\\s)`{3}((?:(?:.*?$)\\n)?(?:[\\s\\S]*?))`{3}(?=$|\\s)"

.field private static final REGEX_HEADING:Ljava/lang/String; = "(?:^|\\n)((\\#{1,6}) (.*?\\S *))(?:\\n|$)"

.field private static final REGEX_ITALIC:Ljava/lang/String; = "(^|\\s|[{\\[])\\_(.*?\\S *)?\\_(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

.field private static final REGEX_LINEBREAK:Ljava/lang/String; = "(^|[\\n])(\\*{3,}|\\-{3,})(?=$|[\\n])(.*)"

.field private static final REGEX_LINK:Ljava/lang/String; = "(^|\\s)\\[(.+?)\\]\\(((https?:\\/\\/(?:www\\.)?|www\\.)[a-z0-9][^@ ]*?)\\)(?=$|\\s|\\.)"

.field private static final REGEX_QUOTE:Ljava/lang/String; = "(^|\\s|[{\\[])\\`(.*?\\S *)?\\`(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

.field private static final REGEX_STRIKE:Ljava/lang/String; = "(^|\\s|[{\\[])\\~(.*?\\S *)?\\~(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

.field private static final REGEX_UNDERLINE:Ljava/lang/String; = "(^|\\s|[{\\[])\\_{2}(.*?\\S *)?\\_{2}(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyMarkDown(Landroid/content/Context;Landroid/text/SpannableStringBuilder;IIIZ)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyOnce(Landroid/content/Context;Landroid/text/SpannableStringBuilder;IIIZ)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyRecursive(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static applyOnce(Landroid/content/Context;Landroid/text/SpannableStringBuilder;IIIZ)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-static {p0, p2, p1}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceLink(Landroid/content/Context;ILandroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p0, p3, p1, p4}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceBlockQuote(Landroid/content/Context;ILandroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceHeading(Landroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceCodeBlock(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceQuote(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static applyRecursive(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceBold(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceUnderLine(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceItalic(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceStrike(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceBullet(ILandroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceNumlist(Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static isLineBreak(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(^|[\\n])(\\*{3,}|\\-{3,})(?=$|[\\n])(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static matchAndReplaceBlockQuote(Landroid/content/Context;ILandroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;
    .locals 6

    const-string v0, "(?:^|\\n)(!(.+?))(?:\\n|$)"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-virtual {p2, v4, v5, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-eqz p1, :cond_1

    new-instance v2, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, p1, v3, v5}, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;-><init>(IFF)V

    const/16 v3, 0x21

    invoke-virtual {p2, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyRecursive(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p2
.end method

.method private static matchAndReplaceBold(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;
    .locals 7

    const-string v0, "(^|\\s|[{\\[])\\*(\\S.*?\\S *)?\\*(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v2

    const-class v4, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    invoke-virtual {p1, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    array-length v5, v4

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getItalicFont()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumItalicFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumItalicFont()Landroid/graphics/Typeface;

    move-result-object v2

    :cond_2
    new-instance v4, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    invoke-direct {v4, v2}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v2, 0x21

    invoke-virtual {p1, v4, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyRecursive(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p1
.end method

.method private static matchAndReplaceBullet(ILandroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/16 v0, 0x8

    const-string v1, "(^\\s|\\n|^)((\\*) ((.*?\\S *)*))"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p1

    :cond_1
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lcom/zoho/livechat/android/utils/CustomBulletSpan;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    invoke-direct {v2, v5, v6, p0}, Lcom/zoho/livechat/android/utils/CustomBulletSpan;-><init>(III)V

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    const/16 v4, 0x21

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p1
.end method

.method private static matchAndReplaceCodeBlock(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;
    .locals 6

    const-string v0, "(^|\\s)`{3}((?:(?:.*?$)\\n)?(?:[\\s\\S]*?))`{3}(?=$|\\s)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    new-instance v2, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMonoFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v4, 0x21

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyRecursive(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p1
.end method

.method private static matchAndReplaceHeading(Landroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;
    .locals 10

    const-string v0, "(?:^|\\n)((\\#{1,6}) (.*?\\S *))(?:\\n|$)"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const/4 v2, 0x6

    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    const/16 v3, 0x1a

    const/4 v4, 0x1

    aput v3, v2, v4

    const/16 v3, 0x18

    const/4 v5, 0x2

    aput v3, v2, v5

    const/16 v3, 0x16

    const/4 v6, 0x3

    aput v3, v2, v6

    const/4 v3, 0x4

    const/16 v7, 0x14

    aput v7, v2, v3

    const/4 v3, 0x5

    const/16 v7, 0x12

    aput v7, v2, v3

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v7

    new-instance v8, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v9, 0x21

    invoke-virtual {p0, v8, v7, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-nez p1, :cond_2

    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    aget v1, v2, v1

    invoke-direct {v8, v1, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v8, v7, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static matchAndReplaceItalic(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;
    .locals 7

    const-string v0, "(^|\\s|[{\\[])\\_(.*?\\S *)?\\_(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getItalicFont()Landroid/graphics/Typeface;

    move-result-object v2

    const-class v4, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    invoke-virtual {p1, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    array-length v5, v4

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumItalicFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumItalicFont()Landroid/graphics/Typeface;

    move-result-object v2

    :cond_2
    new-instance v4, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    invoke-direct {v4, v2}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v2, 0x21

    invoke-virtual {p1, v4, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyRecursive(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p1
.end method

.method public static matchAndReplaceLine(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    const-string v0, "(^|[\\n])(\\*{3,}|\\-{3,})(?=$|[\\n])(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-virtual {p0, v3, v1, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static matchAndReplaceLink(Landroid/content/Context;ILandroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7

    const-string v0, "(^|\\s)\\[(.+?)\\]\\(((https?:\\/\\/(?:www\\.)?|www\\.)[a-z0-9][^@ ]*?)\\)(?=$|\\s|\\.)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p2

    :cond_0
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    new-instance v3, Lcom/zoho/livechat/android/utils/MarkDownUtil$1;

    invoke-direct {v3, v2, p0, p1}, Lcom/zoho/livechat/android/utils/MarkDownUtil$1;-><init>(Ljava/lang/String;Landroid/content/Context;I)V

    const/16 v2, 0x21

    invoke-virtual {p2, v3, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_1
    return-object p2
.end method

.method private static matchAndReplaceNumlist(Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;
    .locals 0

    return-object p0
.end method

.method private static matchAndReplaceQuote(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 5

    const-string v0, "(^|\\s|[{\\[])\\`(.*?\\S *)?\\`(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u201c"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u201d"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#f65b5b"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static matchAndReplaceStrike(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;
    .locals 6

    const-string v0, "(^|\\s|[{\\[])\\~(.*?\\S *)?\\~(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyRecursive(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p1
.end method

.method private static matchAndReplaceUnderLine(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;
    .locals 6

    const-string v0, "(^|\\s|[{\\[])\\_{2}(.*?\\S *)?\\_{2}(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyRecursive(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p1
.end method

.method private static removeBlockQuoteMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(?:^|\\n)(!(.+?))(?:\\n|$)"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownRecursive(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static removeBoldMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(^|\\s|[{\\[])\\*(\\S.*?\\S *)?\\*(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownRecursive(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static removeBulletMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x8

    const-string v1, "(^\\s|\\n|^)((\\*) ((.*?\\S *)*))"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static removeCodeBlockMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(^|\\s)`{3}((?:(?:.*?$)\\n)?(?:[\\s\\S]*?))`{3}(?=$|\\s)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownRecursive(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static removeHeadingMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(?:^|\\n)((\\#{1,6}) (.*?\\S *))(?:\\n|$)"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static removeItalicMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(^|\\s|[{\\[])\\_(.*?\\S *)?\\_(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownRecursive(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static removeLineMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const-string v0, "(^|[\\n])(\\*{3,}|\\-{3,})(?=$|[\\n])(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    const-string v1, "---"

    invoke-virtual {p0, v2, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static removeLinkMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(^|\\s)\\[(.+?)\\]\\(((https?:\\/\\/(?:www\\.)?|www\\.)[a-z0-9][^@ ]*?)\\)(?=$|\\s|\\.)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method public static removeMarkdownForNotification(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownOnce(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownRecursive(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeMarkdownOnce(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeLinkMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeBlockQuoteMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeHeadingMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeCodeBlockMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeQuoteMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static removeMarkdownRecursive(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeBoldMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeUnderLineMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeItalicMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeStrikeMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeBulletMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeLineMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static removeQuoteMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(^|\\s|[{\\[])\\`(.*?\\S *)?\\`(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u201c"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u201d"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static removeStrikeMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(^|\\s|[{\\[])\\~(.*?\\S *)?\\~(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownRecursive(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method private static removeUnderLineMarkdown(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "(^|\\s|[{\\[])\\_{2}(.*?\\S *)?\\_{2}(?=$|\\s|[\\.,\\?:;\\-}\\]](?:$|\\s))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownRecursive(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method
