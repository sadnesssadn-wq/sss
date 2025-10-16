.class public final Lc/d/a/c/h0/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/h0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lc/d/a/c/j0/h;

.field public b:Z


# direct methods
.method public constructor <init>(Lc/d/a/c/h0/a$b;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iget-object v0, p1, Lc/d/a/c/h0/a$b;->a:Lc/d/a/c/j0/h;

    .line 1
    iget-object v0, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    .line 2
    invoke-virtual {v0}, Lc/d/a/c/j0/h$b;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc/d/a/c/j0/h;

    iput-object v0, p0, Lc/d/a/c/h0/a$b;->a:Lc/d/a/c/j0/h;

    iget-boolean p1, p1, Lc/d/a/c/h0/a$b;->b:Z

    iput-boolean p1, p0, Lc/d/a/c/h0/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(Lc/d/a/c/j0/h;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lc/d/a/c/h0/a$b;->a:Lc/d/a/c/j0/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/c/h0/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Lc/d/a/c/h0/a;

    new-instance v1, Lc/d/a/c/h0/a$b;

    invoke-direct {v1, p0}, Lc/d/a/c/h0/a$b;-><init>(Lc/d/a/c/h0/a$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/d/a/c/h0/a;-><init>(Lc/d/a/c/h0/a$b;Lc/d/a/c/h0/a$a;)V

    return-object v0
.end method
