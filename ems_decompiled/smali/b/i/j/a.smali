.class public Lb/i/j/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lb/i/j/m;

.field public final synthetic d:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lb/i/j/c;Lb/i/j/m;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p2, p0, Lb/i/j/a;->c:Lb/i/j/m;

    iput-object p3, p0, Lb/i/j/a;->d:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/i/j/a;->c:Lb/i/j/m;

    iget-object v1, p0, Lb/i/j/a;->d:Landroid/graphics/Typeface;

    check-cast v0, Lb/i/g/d$a;

    .line 1
    iget-object v0, v0, Lb/i/g/d$a;->a:Lb/i/f/c/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lb/i/f/c/g;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
