.class public Lc/d/a/c/f0/b$c;
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

    iput-object p1, p0, Lc/d/a/c/f0/b$c;->a:Lc/d/a/c/f0/b;

    invoke-direct {p0}, Lb/v/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lc/d/a/c/f0/b$c;->a:Lc/d/a/c/f0/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/d/a/c/f0/b;->setIndeterminate(Z)V

    iget-object p1, p0, Lc/d/a/c/f0/b$c;->a:Lc/d/a/c/f0/b;

    invoke-virtual {p1, v0, v0}, Lc/d/a/c/f0/b;->c(IZ)V

    iget-object p1, p0, Lc/d/a/c/f0/b$c;->a:Lc/d/a/c/f0/b;

    .line 1
    iget v0, p1, Lc/d/a/c/f0/b;->d:I

    .line 2
    iget-boolean v1, p1, Lc/d/a/c/f0/b;->e:Z

    .line 3
    invoke-virtual {p1, v0, v1}, Lc/d/a/c/f0/b;->c(IZ)V

    return-void
.end method
