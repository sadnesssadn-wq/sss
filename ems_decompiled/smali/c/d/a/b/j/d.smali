.class public Lc/d/a/b/j/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/j/d$a;
    }
.end annotation


# static fields
.field public static final a:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "Lc/d/a/b/i/j/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "Lc/d/a/b/i/j/r;",
            "Lc/d/a/b/e/m/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/d/a/b/e/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a<",
            "Lc/d/a/b/e/m/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lc/d/a/b/i/j/e0;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/d/a/b/e/m/a$g;

    invoke-direct {v0}, Lc/d/a/b/e/m/a$g;-><init>()V

    sput-object v0, Lc/d/a/b/j/d;->a:Lc/d/a/b/e/m/a$g;

    new-instance v1, Lc/d/a/b/j/h;

    invoke-direct {v1}, Lc/d/a/b/j/h;-><init>()V

    sput-object v1, Lc/d/a/b/j/d;->b:Lc/d/a/b/e/m/a$a;

    new-instance v2, Lc/d/a/b/e/m/a;

    const-string v3, "LocationServices.API"

    invoke-direct {v2, v3, v1, v0}, Lc/d/a/b/e/m/a;-><init>(Ljava/lang/String;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$g;)V

    sput-object v2, Lc/d/a/b/j/d;->c:Lc/d/a/b/e/m/a;

    new-instance v0, Lc/d/a/b/i/j/e0;

    invoke-direct {v0}, Lc/d/a/b/i/j/e0;-><init>()V

    sput-object v0, Lc/d/a/b/j/d;->d:Lc/d/a/b/i/j/e0;

    return-void
.end method
