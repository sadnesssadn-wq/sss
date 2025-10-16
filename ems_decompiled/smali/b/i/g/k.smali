.class public Lb/i/g/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/g/j$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/i/g/j$b<",
        "Lb/i/f/c/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/i/g/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/i/f/c/d;

    .line 1
    iget p1, p1, Lb/i/f/c/d;->b:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lb/i/f/c/d;

    .line 1
    iget-boolean p1, p1, Lb/i/f/c/d;->c:Z

    return p1
.end method
