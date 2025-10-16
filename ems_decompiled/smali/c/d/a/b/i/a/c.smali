.class public final Lc/d/a/b/i/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/d/a/b/e/c;

.field public static final b:Lc/d/a/b/e/c;

.field public static final c:Lc/d/a/b/e/c;

.field public static final d:Lc/d/a/b/e/c;

.field public static final e:[Lc/d/a/b/e/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc/d/a/b/e/c;

    const-string v1, "sms_code_autofill"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lc/d/a/b/e/c;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lc/d/a/b/i/a/c;->a:Lc/d/a/b/e/c;

    new-instance v1, Lc/d/a/b/e/c;

    const-string v4, "sms_code_browser"

    invoke-direct {v1, v4, v2, v3}, Lc/d/a/b/e/c;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lc/d/a/b/i/a/c;->b:Lc/d/a/b/e/c;

    new-instance v2, Lc/d/a/b/e/c;

    const-string v3, "sms_retrieve"

    const-wide/16 v4, 0x1

    invoke-direct {v2, v3, v4, v5}, Lc/d/a/b/e/c;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lc/d/a/b/i/a/c;->c:Lc/d/a/b/e/c;

    new-instance v3, Lc/d/a/b/e/c;

    const-string v4, "user_consent"

    const-wide/16 v5, 0x3

    invoke-direct {v3, v4, v5, v6}, Lc/d/a/b/e/c;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lc/d/a/b/i/a/c;->d:Lc/d/a/b/e/c;

    const/4 v4, 0x4

    new-array v4, v4, [Lc/d/a/b/e/c;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lc/d/a/b/i/a/c;->e:[Lc/d/a/b/e/c;

    return-void
.end method
