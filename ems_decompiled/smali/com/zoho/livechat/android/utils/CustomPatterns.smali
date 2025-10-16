.class public Lcom/zoho/livechat/android/utils/CustomPatterns;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NUMBER_N:Ljava/util/regex/Pattern;

.field public static final STRING_N:Ljava/util/regex/Pattern;


# instance fields
.field private matcher:Ljava/util/regex/Matcher;

.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "number\\(([0-9\\-]+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/utils/CustomPatterns;->NUMBER_N:Ljava/util/regex/Pattern;

    const-string v0, "string\\(([0-9\\-]+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/utils/CustomPatterns;->STRING_N:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/CustomPatterns;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public getGroup(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/CustomPatterns;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/CustomPatterns;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/CustomPatterns;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
