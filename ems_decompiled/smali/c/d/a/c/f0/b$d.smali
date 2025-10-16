.class public Lc/d/a/c/f0/b$d;
.super Lb/v/a/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/f0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/f0/b;


# direct methods
.method public constructor <init>(Lc/d/a/c/f0/b;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/b$d;->a:Lc/d/a/c/f0/b;

    invoke-direct {p0}, Lb/v/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/c/f0/b$d;->a:Lc/d/a/c/f0/b;

    .line 1
    iget-boolean v0, p1, Lc/d/a/c/f0/b;->i:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p1, Lc/d/a/c/f0/b;->j:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
