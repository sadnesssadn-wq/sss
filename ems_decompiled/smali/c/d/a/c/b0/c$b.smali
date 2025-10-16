.class public Lc/d/a/c/b0/c$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/b0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/b0/c;


# direct methods
.method public constructor <init>(Lc/d/a/c/b0/c;Lc/d/a/c/b0/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/c/b0/c$b;->a:Lc/d/a/c/b0/c;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/b0/c$b;->a:Lc/d/a/c/b0/c;

    return-object v0
.end method
