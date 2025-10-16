.class public final Lc/d/a/b/a/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "Lc/d/a/b/i/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "Lc/d/a/b/i/c/a;",
            "Lc/d/a/b/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/d/a/b/e/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a<",
            "Lc/d/a/b/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lc/d/a/b/i/c/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/d/a/b/e/m/a$g;

    invoke-direct {v0}, Lc/d/a/b/e/m/a$g;-><init>()V

    sput-object v0, Lc/d/a/b/a/a/b;->a:Lc/d/a/b/e/m/a$g;

    new-instance v1, Lc/d/a/b/a/a/f;

    invoke-direct {v1}, Lc/d/a/b/a/a/f;-><init>()V

    sput-object v1, Lc/d/a/b/a/a/b;->b:Lc/d/a/b/e/m/a$a;

    new-instance v2, Lc/d/a/b/e/m/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Lc/d/a/b/e/m/a;-><init>(Ljava/lang/String;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$g;)V

    sput-object v2, Lc/d/a/b/a/a/b;->c:Lc/d/a/b/e/m/a;

    new-instance v0, Lc/d/a/b/i/c/d;

    invoke-direct {v0}, Lc/d/a/b/i/c/d;-><init>()V

    sput-object v0, Lc/d/a/b/a/a/b;->d:Lc/d/a/b/i/c/d;

    return-void
.end method
