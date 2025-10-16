.class public final Lc/d/a/b/j/h;
.super Lc/d/a/b/e/m/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/a$a<",
        "Lc/d/a/b/i/j/r;",
        "Lc/d/a/b/e/m/a$d$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/m/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Ljava/lang/Object;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)Lc/d/a/b/e/m/a$f;
    .locals 7

    new-instance p4, Lc/d/a/b/i/j/r;

    const-string v5, "locationServices"

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lc/d/a/b/i/j/r;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;Ljava/lang/String;Lc/d/a/b/e/p/d;)V

    return-object p4
.end method
