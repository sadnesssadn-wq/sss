.class public Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/h;


# virtual methods
.method public d(Lb/o/j;Lb/o/f$a;)V
    .locals 1

    sget-object p1, Lb/o/f$a;->ON_START:Lb/o/f$a;

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    sget-object p1, Lb/o/f$a;->ON_DESTROY:Lb/o/f$a;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    throw v0

    .line 1
    :cond_1
    throw v0
.end method
