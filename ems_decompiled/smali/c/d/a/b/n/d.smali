.class public final Lc/d/a/b/n/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "Lc/d/a/b/n/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "Lc/d/a/b/n/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "Lc/d/a/b/n/b/a;",
            "Lc/d/a/b/n/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "Lc/d/a/b/n/b/a;",
            "Lc/d/a/b/n/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lc/d/a/b/e/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a<",
            "Lc/d/a/b/n/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lc/d/a/b/e/m/a$g;

    invoke-direct {v0}, Lc/d/a/b/e/m/a$g;-><init>()V

    sput-object v0, Lc/d/a/b/n/d;->a:Lc/d/a/b/e/m/a$g;

    new-instance v1, Lc/d/a/b/e/m/a$g;

    invoke-direct {v1}, Lc/d/a/b/e/m/a$g;-><init>()V

    sput-object v1, Lc/d/a/b/n/d;->b:Lc/d/a/b/e/m/a$g;

    new-instance v2, Lc/d/a/b/n/c;

    invoke-direct {v2}, Lc/d/a/b/n/c;-><init>()V

    sput-object v2, Lc/d/a/b/n/d;->c:Lc/d/a/b/e/m/a$a;

    new-instance v3, Lc/d/a/b/n/f;

    invoke-direct {v3}, Lc/d/a/b/n/f;-><init>()V

    sput-object v3, Lc/d/a/b/n/d;->d:Lc/d/a/b/e/m/a$a;

    const-string v4, "profile"

    const-string v5, "scopeUri must not be null or empty"

    .line 1
    invoke-static {v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v4, "email"

    invoke-static {v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    new-instance v4, Lc/d/a/b/e/m/a;

    const-string v5, "SignIn.API"

    invoke-direct {v4, v5, v2, v0}, Lc/d/a/b/e/m/a;-><init>(Ljava/lang/String;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$g;)V

    sput-object v4, Lc/d/a/b/n/d;->e:Lc/d/a/b/e/m/a;

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    .line 3
    invoke-static {v3, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
