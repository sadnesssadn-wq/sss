.class public Lb/m/d/y$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/d/y$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/d/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Lb/m/d/y;


# direct methods
.method public constructor <init>(Lb/m/d/y;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lb/m/d/y$m;->c:Lb/m/d/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lb/m/d/y$m;->a:I

    iput p4, p0, Lb/m/d/y$m;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/m/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb/m/d/y$m;->c:Lb/m/d/y;

    iget-object v0, v0, Lb/m/d/y;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget v1, p0, Lb/m/d/y$m;->a:I

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v0

    invoke-virtual {v0}, Lb/m/d/y;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/m/d/y$m;->c:Lb/m/d/y;

    const/4 v3, 0x0

    iget v4, p0, Lb/m/d/y$m;->a:I

    iget v5, p0, Lb/m/d/y$m;->b:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lb/m/d/y;->Z(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
