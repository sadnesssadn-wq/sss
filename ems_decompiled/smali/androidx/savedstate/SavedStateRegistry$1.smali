.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/h;


# instance fields
.field public final synthetic a:Lb/s/b;


# direct methods
.method public constructor <init>(Lb/s/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/s/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lb/o/j;Lb/o/f$a;)V
    .locals 0

    sget-object p1, Lb/o/f$a;->ON_START:Lb/o/f$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/s/b;

    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Lb/s/b;->e:Z

    goto :goto_1

    :cond_0
    sget-object p1, Lb/o/f$a;->ON_STOP:Lb/o/f$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/s/b;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
