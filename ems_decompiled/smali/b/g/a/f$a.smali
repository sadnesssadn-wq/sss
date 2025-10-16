.class public Lb/g/a/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/g/a/f;->m(Lb/g/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lb/g/a/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/g/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/g/a/g;

    check-cast p2, Lb/g/a/g;

    .line 1
    iget p1, p1, Lb/g/a/g;->d:I

    iget p2, p2, Lb/g/a/g;->d:I

    sub-int/2addr p1, p2

    return p1
.end method
