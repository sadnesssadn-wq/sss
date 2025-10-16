.class public final Lc/d/a/b/e/p/s/d;
.super Lc/d/a/b/e/m/d;
.source ""

# interfaces
.implements Lc/d/a/b/e/p/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/d<",
        "Lc/d/a/b/e/m/a$d$c;",
        ">;",
        "Lc/d/a/b/e/p/w;"
    }
.end annotation


# static fields
.field public static final k:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "Lc/d/a/b/e/p/s/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "Lc/d/a/b/e/p/s/e;",
            "Lc/d/a/b/e/m/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lc/d/a/b/e/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a<",
            "Lc/d/a/b/e/m/a$d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/d/a/b/e/m/a$g;

    invoke-direct {v0}, Lc/d/a/b/e/m/a$g;-><init>()V

    sput-object v0, Lc/d/a/b/e/p/s/d;->k:Lc/d/a/b/e/m/a$g;

    new-instance v1, Lc/d/a/b/e/p/s/f;

    invoke-direct {v1}, Lc/d/a/b/e/p/s/f;-><init>()V

    sput-object v1, Lc/d/a/b/e/p/s/d;->l:Lc/d/a/b/e/m/a$a;

    new-instance v2, Lc/d/a/b/e/m/a;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lc/d/a/b/e/m/a;-><init>(Ljava/lang/String;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$g;)V

    sput-object v2, Lc/d/a/b/e/p/s/d;->m:Lc/d/a/b/e/m/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lc/d/a/b/e/p/s/d;->m:Lc/d/a/b/e/m/a;

    sget-object v1, Lc/d/a/b/e/m/a$d;->b:Lc/d/a/b/e/m/a$d$c;

    sget-object v2, Lc/d/a/b/e/m/d$a;->c:Lc/d/a/b/e/m/d$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lc/d/a/b/e/m/d;-><init>(Landroid/content/Context;Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/a$d;Lc/d/a/b/e/m/d$a;)V

    return-void
.end method


# virtual methods
.method public final d(Lc/d/a/b/e/p/u;)Lc/d/a/b/p/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/p/u;",
            ")",
            "Lc/d/a/b/p/l<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/d/a/b/e/m/m/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/b/e/m/m/r$a;-><init>(Lc/d/a/b/e/m/m/o1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lc/d/a/b/e/c;

    .line 2
    sget-object v2, Lc/d/a/b/i/d/d;->a:Lc/d/a/b/e/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    iput-object v1, v0, Lc/d/a/b/e/m/m/r$a;->c:[Lc/d/a/b/e/c;

    .line 4
    iput-boolean v3, v0, Lc/d/a/b/e/m/m/r$a;->b:Z

    .line 5
    new-instance v1, Lc/d/a/b/e/p/s/c;

    invoke-direct {v1, p1}, Lc/d/a/b/e/p/s/c;-><init>(Lc/d/a/b/e/p/u;)V

    .line 6
    iput-object v1, v0, Lc/d/a/b/e/m/m/r$a;->a:Lc/d/a/b/e/m/m/o;

    .line 7
    invoke-virtual {v0}, Lc/d/a/b/e/m/m/r$a;->a()Lc/d/a/b/e/m/m/r;

    move-result-object p1

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0, p1}, Lc/d/a/b/e/m/d;->c(ILc/d/a/b/e/m/m/r;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method
