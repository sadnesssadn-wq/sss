.class public Lb/g/a/i/m/n$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/a/i/m/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lb/g/a/i/m/n;Lb/g/a/i/d;Lb/g/a/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {p3, p1}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {p3, p1}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    invoke-virtual {p3, p1}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    invoke-virtual {p3, p1}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, Lb/g/a/i/d;->O:Lb/g/a/i/c;

    invoke-virtual {p3, p1}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    return-void
.end method
