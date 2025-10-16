.class public Lc/d/b/u/c1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/b/u/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Lc/d/a/b/p/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/m<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/p/m;

    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    iput-object v0, p0, Lc/d/b/u/c1$a;->b:Lc/d/a/b/p/m;

    iput-object p1, p0, Lc/d/b/u/c1$a;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc/d/b/u/c1$a;->b:Lc/d/a/b/p/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/p/m;->b(Ljava/lang/Object;)Z

    return-void
.end method
