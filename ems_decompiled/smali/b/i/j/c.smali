.class public Lb/i/j/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/i/j/m;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lb/i/j/m;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/i/j/c;->a:Lb/i/j/m;

    iput-object p2, p0, Lb/i/j/c;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lb/i/j/j$a;)V
    .locals 3

    .line 1
    iget v0, p1, Lb/i/j/j$a;->b:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object p1, p1, Lb/i/j/j$a;->a:Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Lb/i/j/c;->a:Lb/i/j/m;

    iget-object v1, p0, Lb/i/j/c;->b:Landroid/os/Handler;

    new-instance v2, Lb/i/j/a;

    invoke-direct {v2, p0, v0, p1}, Lb/i/j/a;-><init>(Lb/i/j/c;Lb/i/j/m;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lb/i/j/c;->a:Lb/i/j/m;

    iget-object v1, p0, Lb/i/j/c;->b:Landroid/os/Handler;

    new-instance v2, Lb/i/j/b;

    invoke-direct {v2, p0, p1, v0}, Lb/i/j/b;-><init>(Lb/i/j/c;Lb/i/j/m;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
