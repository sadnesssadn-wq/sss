.class public Lb/u/u$a$a;
.super Lb/u/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/u/u$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/f/a;

.field public final synthetic b:Lb/u/u$a;


# direct methods
.method public constructor <init>(Lb/u/u$a;Lb/f/a;)V
    .locals 0

    iput-object p1, p0, Lb/u/u$a$a;->b:Lb/u/u$a;

    iput-object p2, p0, Lb/u/u$a$a;->a:Lb/f/a;

    invoke-direct {p0}, Lb/u/t;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Lb/u/u$a$a;->a:Lb/f/a;

    iget-object v1, p0, Lb/u/u$a$a;->b:Lb/u/u$a;

    iget-object v1, v1, Lb/u/u$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lb/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->x(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    return-void
.end method
