.class public Lb/i/g/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/g/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/g/j;->f([Lb/i/j/l;I)Lb/i/j/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/i/g/j$b<",
        "Lb/i/j/l;",
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

    check-cast p1, Lb/i/j/l;

    .line 1
    iget p1, p1, Lb/i/j/l;->c:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lb/i/j/l;

    .line 1
    iget-boolean p1, p1, Lb/i/j/l;->d:Z

    return p1
.end method
