.class public Lc/d/a/c/g0/b$a;
.super Lb/i/f/c/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/c/g0/b;->c(Landroid/content/Context;Lc/d/a/c/g0/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/g0/d;

.field public final synthetic b:Lc/d/a/c/g0/b;


# direct methods
.method public constructor <init>(Lc/d/a/c/g0/b;Lc/d/a/c/g0/d;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/g0/b$a;->b:Lc/d/a/c/g0/b;

    iput-object p2, p0, Lc/d/a/c/g0/b$a;->a:Lc/d/a/c/g0/d;

    invoke-direct {p0}, Lb/i/f/c/g;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/g0/b$a;->b:Lc/d/a/c/g0/b;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lc/d/a/c/g0/b;->m:Z

    .line 2
    iget-object v0, p0, Lc/d/a/c/g0/b$a;->a:Lc/d/a/c/g0/d;

    invoke-virtual {v0, p1}, Lc/d/a/c/g0/d;->a(I)V

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/g0/b$a;->b:Lc/d/a/c/g0/b;

    iget v1, v0, Lc/d/a/c/g0/b;->d:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1
    iput-object p1, v0, Lc/d/a/c/g0/b;->n:Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Lc/d/a/c/g0/b$a;->b:Lc/d/a/c/g0/b;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lc/d/a/c/g0/b;->m:Z

    .line 4
    iget-object v0, p0, Lc/d/a/c/g0/b$a;->a:Lc/d/a/c/g0/d;

    .line 5
    iget-object p1, p1, Lc/d/a/c/g0/b;->n:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lc/d/a/c/g0/d;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
