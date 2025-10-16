.class public final Lc/d/a/b/a/a/f;
.super Lc/d/a/b/e/m/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/a$a<",
        "Lc/d/a/b/i/c/a;",
        "Lc/d/a/b/a/a/c;",
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

    move-object v4, p4

    check-cast v4, Lc/d/a/b/a/a/c;

    new-instance p4, Lc/d/a/b/i/c/a;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc/d/a/b/i/c/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Lc/d/a/b/a/a/c;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)V

    return-object p4
.end method
