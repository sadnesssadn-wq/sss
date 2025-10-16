.class public final Lc/d/a/b/a/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/a/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "Lc/d/a/b/i/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "Lc/d/a/b/a/a/e/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "Lc/d/a/b/i/b/e;",
            "Lc/d/a/b/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "Lc/d/a/b/a/a/e/b/g;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lc/d/a/b/e/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc/d/a/b/e/m/a$g;

    invoke-direct {v0}, Lc/d/a/b/e/m/a$g;-><init>()V

    sput-object v0, Lc/d/a/b/a/a/a;->a:Lc/d/a/b/e/m/a$g;

    new-instance v1, Lc/d/a/b/e/m/a$g;

    invoke-direct {v1}, Lc/d/a/b/e/m/a$g;-><init>()V

    sput-object v1, Lc/d/a/b/a/a/a;->b:Lc/d/a/b/e/m/a$g;

    new-instance v2, Lc/d/a/b/a/a/g;

    invoke-direct {v2}, Lc/d/a/b/a/a/g;-><init>()V

    sput-object v2, Lc/d/a/b/a/a/a;->c:Lc/d/a/b/e/m/a$a;

    new-instance v3, Lc/d/a/b/a/a/h;

    invoke-direct {v3}, Lc/d/a/b/a/a/h;-><init>()V

    sput-object v3, Lc/d/a/b/a/a/a;->d:Lc/d/a/b/e/m/a$a;

    sget-object v4, Lc/d/a/b/a/a/b;->c:Lc/d/a/b/e/m/a;

    const-string v4, "Cannot construct an Api with a null ClientBuilder"

    .line 1
    invoke-static {v2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Cannot construct an Api with a null ClientKey"

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lc/d/a/b/e/m/a;

    const-string v2, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v0, v2, v3, v1}, Lc/d/a/b/e/m/a;-><init>(Ljava/lang/String;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$g;)V

    sput-object v0, Lc/d/a/b/a/a/a;->e:Lc/d/a/b/e/m/a;

    sget-object v0, Lc/d/a/b/a/a/b;->d:Lc/d/a/b/i/c/d;

    return-void
.end method
