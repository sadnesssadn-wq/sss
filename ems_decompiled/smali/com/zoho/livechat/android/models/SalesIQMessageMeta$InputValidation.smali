.class public Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/models/SalesIQMessageMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputValidation"
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field public final synthetic this$0:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->this$0:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "format"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    const-string p1, "error"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->error:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;)Ljava/util/Hashtable;
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->toHashtable()Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method private toHashtable()Ljava/util/Hashtable;
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->error:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    return-object v0
.end method

.method public validate(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    const-string v1, "phoneno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isNumeric(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    const-string v1, "website"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_3
    new-instance v0, Lcom/zoho/livechat/android/utils/CustomPatterns;

    sget-object v1, Lcom/zoho/livechat/android/utils/CustomPatterns;->NUMBER_N:Ljava/util/regex/Pattern;

    invoke-direct {v0, v1}, Lcom/zoho/livechat/android/utils/CustomPatterns;-><init>(Ljava/util/regex/Pattern;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/CustomPatterns;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "-"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/utils/CustomPatterns;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    :cond_6
    new-instance v0, Lcom/zoho/livechat/android/utils/CustomPatterns;

    sget-object v1, Lcom/zoho/livechat/android/utils/CustomPatterns;->STRING_N:Ljava/util/regex/Pattern;

    invoke-direct {v0, v1}, Lcom/zoho/livechat/android/utils/CustomPatterns;-><init>(Ljava/util/regex/Pattern;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/CustomPatterns;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/utils/CustomPatterns;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v0, :cond_8

    const/4 v3, 0x1

    :cond_8
    return v3

    :cond_9
    return v4
.end method
