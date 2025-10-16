.class public Lc/c/b/a/j/j$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/b/a/j/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/graphics/Path;

.field public b:[Landroid/graphics/Bitmap;

.field public final synthetic c:Lc/c/b/a/j/j;


# direct methods
.method public constructor <init>(Lc/c/b/a/j/j;Lc/c/b/a/j/j$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/b/a/j/j$b;->c:Lc/c/b/a/j/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/j$b;->a:Landroid/graphics/Path;

    return-void
.end method
