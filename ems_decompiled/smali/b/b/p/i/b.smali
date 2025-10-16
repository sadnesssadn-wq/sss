.class public abstract Lb/b/p/i/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/p/i/m;


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroid/content/Context;

.field public e:Lb/b/p/i/g;

.field public f:Landroid/view/LayoutInflater;

.field public g:Lb/b/p/i/m$a;

.field public h:I

.field public i:I

.field public j:Lb/b/p/i/n;

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/p/i/b;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/b/p/i/b;->f:Landroid/view/LayoutInflater;

    iput p2, p0, Lb/b/p/i/b;->h:I

    iput p3, p0, Lb/b/p/i/b;->i:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lb/b/p/i/b;->k:I

    return v0
.end method

.method public k(Lb/b/p/i/g;Lb/b/p/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l(Lb/b/p/i/g;Lb/b/p/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public m(Lb/b/p/i/m$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/i/b;->g:Lb/b/p/i/m$a;

    return-void
.end method
