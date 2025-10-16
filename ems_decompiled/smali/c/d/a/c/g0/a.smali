.class public final Lc/d/a/c/g0/a;
.super Lc/d/a/c/g0/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/g0/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Lc/d/a/c/g0/a$a;

.field public c:Z


# direct methods
.method public constructor <init>(Lc/d/a/c/g0/a$a;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/c/g0/d;-><init>()V

    iput-object p2, p0, Lc/d/a/c/g0/a;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Lc/d/a/c/g0/a;->b:Lc/d/a/c/g0/a$a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object p1, p0, Lc/d/a/c/g0/a;->a:Landroid/graphics/Typeface;

    .line 1
    iget-boolean v0, p0, Lc/d/a/c/g0/a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/g0/a;->b:Lc/d/a/c/g0/a$a;

    invoke-interface {v0, p1}, Lc/d/a/c/g0/a$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lc/d/a/c/g0/a;->c:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lc/d/a/c/g0/a;->b:Lc/d/a/c/g0/a$a;

    invoke-interface {p2, p1}, Lc/d/a/c/g0/a$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
