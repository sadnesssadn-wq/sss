.class public Lb/g/c/b/f;
.super Lb/g/c/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/c/b/f$a;
    }
.end annotation


# instance fields
.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:I

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/g/c/b/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/c/b/f;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lb/g/c/b/f;->g:I

    const/4 v1, -0x1

    iput v1, p0, Lb/g/c/b/f;->h:I

    iput-object v0, p0, Lb/g/c/b/f;->i:Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lb/g/c/b/f;->j:F

    const/4 v2, 0x0

    iput v2, p0, Lb/g/c/b/f;->k:F

    iput v2, p0, Lb/g/c/b/f;->l:F

    iput v0, p0, Lb/g/c/b/f;->m:F

    iput v1, p0, Lb/g/c/b/f;->n:I

    iput v0, p0, Lb/g/c/b/f;->o:F

    iput v0, p0, Lb/g/c/b/f;->p:F

    iput v0, p0, Lb/g/c/b/f;->q:F

    iput v0, p0, Lb/g/c/b/f;->r:F

    iput v0, p0, Lb/g/c/b/f;->s:F

    iput v0, p0, Lb/g/c/b/f;->t:F

    iput v0, p0, Lb/g/c/b/f;->u:F

    iput v0, p0, Lb/g/c/b/f;->v:F

    iput v0, p0, Lb/g/c/b/f;->w:F

    iput v0, p0, Lb/g/c/b/f;->x:F

    iput v0, p0, Lb/g/c/b/f;->y:F

    const/4 v0, 0x4

    iput v0, p0, Lb/g/c/b/d;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/g/c/b/d;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/g/c/a/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "add "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, " "

    const/4 v4, 0x1

    move-object v5, v3

    :goto_0
    if-gt v4, v2, :cond_0

    aget-object v6, v1, v4

    const-string v6, ".("

    invoke-static {v6}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyCycle"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/h/a/j;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "wavePhase"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "waveOffset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_8
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    :cond_b
    const/4 v3, 0x5

    goto :goto_2

    :sswitch_9
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_a
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_2

    :cond_d
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_b
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_2

    :cond_e
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_c
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_2

    :cond_f
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_d
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_2

    :cond_10
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_0

    const-string v2, "CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UNKNOWN  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WARNING KeyCycle"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->l:F

    goto :goto_3

    :pswitch_1
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->k:F

    goto :goto_3

    :pswitch_2
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->o:F

    goto :goto_3

    :pswitch_3
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->r:F

    goto :goto_3

    :pswitch_4
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->p:F

    goto :goto_3

    :pswitch_5
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->q:F

    goto :goto_3

    :pswitch_6
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->v:F

    goto :goto_3

    :pswitch_7
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->u:F

    goto :goto_3

    :pswitch_8
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->m:F

    goto :goto_3

    :pswitch_9
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->y:F

    goto :goto_3

    :pswitch_a
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->x:F

    goto :goto_3

    :pswitch_b
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->w:F

    goto :goto_3

    :pswitch_c
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->t:F

    goto :goto_3

    :pswitch_d
    iget v1, p0, Lb/g/c/b/d;->a:I

    iget v3, p0, Lb/g/c/b/f;->s:F

    :goto_3
    invoke-virtual {v2, v1, v3}, Lb/g/a/h/a/j;->b(IF)V

    goto/16 :goto_1

    :cond_11
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lb/g/c/b/d;
    .locals 2

    new-instance v0, Lb/g/c/b/f;

    invoke-direct {v0}, Lb/g/c/b/f;-><init>()V

    .line 1
    invoke-super {v0, p0}, Lb/g/c/b/d;->c(Lb/g/c/b/d;)Lb/g/c/b/d;

    iget-object v1, p0, Lb/g/c/b/f;->f:Ljava/lang/String;

    iput-object v1, v0, Lb/g/c/b/f;->f:Ljava/lang/String;

    iget v1, p0, Lb/g/c/b/f;->g:I

    iput v1, v0, Lb/g/c/b/f;->g:I

    iget v1, p0, Lb/g/c/b/f;->h:I

    iput v1, v0, Lb/g/c/b/f;->h:I

    iget-object v1, p0, Lb/g/c/b/f;->i:Ljava/lang/String;

    iput-object v1, v0, Lb/g/c/b/f;->i:Ljava/lang/String;

    iget v1, p0, Lb/g/c/b/f;->j:F

    iput v1, v0, Lb/g/c/b/f;->j:F

    iget v1, p0, Lb/g/c/b/f;->k:F

    iput v1, v0, Lb/g/c/b/f;->k:F

    iget v1, p0, Lb/g/c/b/f;->l:F

    iput v1, v0, Lb/g/c/b/f;->l:F

    iget v1, p0, Lb/g/c/b/f;->m:F

    iput v1, v0, Lb/g/c/b/f;->m:F

    iget v1, p0, Lb/g/c/b/f;->n:I

    iput v1, v0, Lb/g/c/b/f;->n:I

    iget v1, p0, Lb/g/c/b/f;->o:F

    iput v1, v0, Lb/g/c/b/f;->o:F

    iget v1, p0, Lb/g/c/b/f;->p:F

    iput v1, v0, Lb/g/c/b/f;->p:F

    iget v1, p0, Lb/g/c/b/f;->q:F

    iput v1, v0, Lb/g/c/b/f;->q:F

    iget v1, p0, Lb/g/c/b/f;->r:F

    iput v1, v0, Lb/g/c/b/f;->r:F

    iget v1, p0, Lb/g/c/b/f;->s:F

    iput v1, v0, Lb/g/c/b/f;->s:F

    iget v1, p0, Lb/g/c/b/f;->t:F

    iput v1, v0, Lb/g/c/b/f;->t:F

    iget v1, p0, Lb/g/c/b/f;->u:F

    iput v1, v0, Lb/g/c/b/f;->u:F

    iget v1, p0, Lb/g/c/b/f;->v:F

    iput v1, v0, Lb/g/c/b/f;->v:F

    iget v1, p0, Lb/g/c/b/f;->w:F

    iput v1, v0, Lb/g/c/b/f;->w:F

    iget v1, p0, Lb/g/c/b/f;->x:F

    iput v1, v0, Lb/g/c/b/f;->x:F

    iget v1, p0, Lb/g/c/b/f;->y:F

    iput v1, v0, Lb/g/c/b/f;->y:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/g/c/b/f;->b()Lb/g/c/b/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lb/g/c/b/f;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lb/g/c/b/f;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Lb/g/c/b/f;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Lb/g/c/b/f;->s:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Lb/g/c/b/f;->t:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Lb/g/c/b/f;->u:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, p0, Lb/g/c/b/f;->v:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Lb/g/c/b/f;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, p0, Lb/g/c/b/f;->w:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p0, Lb/g/c/b/f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, Lb/g/c/b/f;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lb/g/c/b/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lb/g/c/b/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    sget-object v0, Lb/g/d/f;->KeyCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1
    sget-object p2, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget-object v2, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_0

    const-string v2, "unused attribute 0x"

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCycle"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3
    :pswitch_0
    iget v2, p0, Lb/g/c/b/f;->l:F

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    .line 5
    iput v1, p0, Lb/g/c/b/f;->l:F

    goto/16 :goto_4

    .line 6
    :pswitch_1
    iget v2, p0, Lb/g/c/b/f;->m:F

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 8
    iput v1, p0, Lb/g/c/b/f;->m:F

    goto/16 :goto_4

    .line 9
    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 10
    iget v2, p0, Lb/g/c/b/f;->y:F

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 12
    iput v1, p0, Lb/g/c/b/f;->y:F

    goto/16 :goto_4

    .line 13
    :pswitch_3
    iget v2, p0, Lb/g/c/b/f;->x:F

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 15
    iput v1, p0, Lb/g/c/b/f;->x:F

    goto/16 :goto_4

    .line 16
    :pswitch_4
    iget v2, p0, Lb/g/c/b/f;->w:F

    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 18
    iput v1, p0, Lb/g/c/b/f;->w:F

    goto/16 :goto_4

    .line 19
    :pswitch_5
    iget v2, p0, Lb/g/c/b/f;->v:F

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 21
    iput v1, p0, Lb/g/c/b/f;->v:F

    goto/16 :goto_4

    .line 22
    :pswitch_6
    iget v2, p0, Lb/g/c/b/f;->u:F

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 24
    iput v1, p0, Lb/g/c/b/f;->u:F

    goto/16 :goto_4

    .line 25
    :pswitch_7
    iget v2, p0, Lb/g/c/b/f;->r:F

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 27
    iput v1, p0, Lb/g/c/b/f;->r:F

    goto/16 :goto_4

    .line 28
    :pswitch_8
    iget v2, p0, Lb/g/c/b/f;->t:F

    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 30
    iput v1, p0, Lb/g/c/b/f;->t:F

    goto/16 :goto_4

    .line 31
    :pswitch_9
    iget v2, p0, Lb/g/c/b/f;->s:F

    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 33
    iput v1, p0, Lb/g/c/b/f;->s:F

    goto/16 :goto_4

    .line 34
    :pswitch_a
    iget v2, p0, Lb/g/c/b/f;->q:F

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 36
    iput v1, p0, Lb/g/c/b/f;->q:F

    goto/16 :goto_4

    .line 37
    :pswitch_b
    iget v2, p0, Lb/g/c/b/f;->p:F

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 39
    iput v1, p0, Lb/g/c/b/f;->p:F

    goto/16 :goto_4

    .line 40
    :pswitch_c
    iget v2, p0, Lb/g/c/b/f;->o:F

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 42
    iput v1, p0, Lb/g/c/b/f;->o:F

    goto/16 :goto_4

    .line 43
    :pswitch_d
    iget v2, p0, Lb/g/c/b/f;->n:I

    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 45
    iput v1, p0, Lb/g/c/b/f;->n:I

    goto/16 :goto_4

    .line 46
    :pswitch_e
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 47
    iget v2, p0, Lb/g/c/b/f;->k:F

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_1

    .line 49
    :cond_0
    iget v2, p0, Lb/g/c/b/f;->k:F

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 51
    :goto_1
    iput v1, p0, Lb/g/c/b/f;->k:F

    goto :goto_4

    .line 52
    :pswitch_f
    iget v2, p0, Lb/g/c/b/f;->j:F

    .line 53
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 54
    iput v1, p0, Lb/g/c/b/f;->j:F

    goto :goto_4

    .line 55
    :pswitch_10
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    iput-object v1, p0, Lb/g/c/b/f;->i:Ljava/lang/String;

    const/4 v1, 0x7

    goto :goto_2

    .line 57
    :cond_1
    iget v2, p0, Lb/g/c/b/f;->h:I

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 59
    :goto_2
    iput v1, p0, Lb/g/c/b/f;->h:I

    goto :goto_4

    .line 60
    :pswitch_11
    iget v2, p0, Lb/g/c/b/f;->g:I

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 62
    iput v1, p0, Lb/g/c/b/f;->g:I

    goto :goto_4

    .line 63
    :pswitch_12
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    iput-object v1, p0, Lb/g/c/b/f;->f:Ljava/lang/String;

    goto :goto_4

    .line 65
    :pswitch_13
    iget v2, p0, Lb/g/c/b/d;->a:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/d;->a:I

    goto :goto_4

    :pswitch_14
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lb/g/c/b/d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/d;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/g/c/b/d;->c:Ljava/lang/String;

    goto :goto_4

    :cond_3
    iget v2, p0, Lb/g/c/b/d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/d;->b:I

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Ljava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/g/c/a/b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CUSTOM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x7

    const/4 v7, -0x1

    if-eqz v5, :cond_4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lb/g/c/b/d;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/d/a;

    if-eqz v4, :cond_0

    .line 1
    iget-object v5, v4, Lb/g/d/a;->c:Lb/g/d/a$a;

    .line 2
    sget-object v6, Lb/g/d/a$a;->d:Lb/g/d/a$a;

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/a/b;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v9, v0, Lb/g/c/b/d;->a:I

    iget v5, v0, Lb/g/c/b/f;->h:I

    iget-object v6, v0, Lb/g/c/b/f;->i:Ljava/lang/String;

    iget v14, v0, Lb/g/c/b/f;->n:I

    iget v10, v0, Lb/g/c/b/f;->j:F

    iget v11, v0, Lb/g/c/b/f;->k:F

    iget v12, v0, Lb/g/c/b/f;->l:F

    invoke-virtual {v4}, Lb/g/d/a;->b()F

    move-result v13

    .line 3
    iget-object v15, v3, Lb/g/a/h/a/e;->f:Ljava/util/ArrayList;

    new-instance v8, Lb/g/a/h/a/e$c;

    move-object/from16 v16, v8

    invoke-direct/range {v8 .. v13}, Lb/g/a/h/a/e$c;-><init>(IFFFF)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v14, v7, :cond_3

    iput v14, v3, Lb/g/a/h/a/e;->e:I

    :cond_3
    iput v5, v3, Lb/g/a/h/a/e;->c:I

    invoke-virtual {v3, v4}, Lb/g/a/h/a/e;->c(Ljava/lang/Object;)V

    iput-object v6, v3, Lb/g/a/h/a/e;->d:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_1
    const/4 v6, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v5, "wavePhase"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "waveOffset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/16 v6, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "alpha"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v6, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "transitionPathRotate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    const/16 v6, 0xa

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "elevation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "rotation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    const/16 v6, 0x8

    goto :goto_2

    :sswitch_6
    const-string v5, "scaleY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_1

    :sswitch_7
    const-string v5, "scaleX"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_8
    const-string v5, "progress"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_9
    const-string v5, "translationZ"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_a
    const-string v5, "translationY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_1

    :cond_e
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_b
    const-string v5, "translationX"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_1

    :cond_f
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_c
    const-string v5, "rotationY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_1

    :cond_10
    const/4 v6, 0x1

    goto :goto_2

    :sswitch_d
    const-string v5, "rotationX"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_1

    :cond_11
    const/4 v6, 0x0

    :cond_12
    :goto_2
    packed-switch v6, :pswitch_data_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  UNKNOWN  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WARNING! KeyCycle"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v13, 0x7fc00000    # Float.NaN

    goto :goto_4

    :pswitch_0
    iget v4, v0, Lb/g/c/b/f;->l:F

    goto :goto_3

    :pswitch_1
    iget v4, v0, Lb/g/c/b/f;->k:F

    goto :goto_3

    :pswitch_2
    iget v4, v0, Lb/g/c/b/f;->o:F

    goto :goto_3

    :pswitch_3
    iget v4, v0, Lb/g/c/b/f;->r:F

    goto :goto_3

    :pswitch_4
    iget v4, v0, Lb/g/c/b/f;->p:F

    goto :goto_3

    :pswitch_5
    iget v4, v0, Lb/g/c/b/f;->q:F

    goto :goto_3

    :pswitch_6
    iget v4, v0, Lb/g/c/b/f;->v:F

    goto :goto_3

    :pswitch_7
    iget v4, v0, Lb/g/c/b/f;->u:F

    goto :goto_3

    :pswitch_8
    iget v4, v0, Lb/g/c/b/f;->m:F

    goto :goto_3

    :pswitch_9
    iget v4, v0, Lb/g/c/b/f;->y:F

    goto :goto_3

    :pswitch_a
    iget v4, v0, Lb/g/c/b/f;->x:F

    goto :goto_3

    :pswitch_b
    iget v4, v0, Lb/g/c/b/f;->w:F

    goto :goto_3

    :pswitch_c
    iget v4, v0, Lb/g/c/b/f;->t:F

    goto :goto_3

    :pswitch_d
    iget v4, v0, Lb/g/c/b/f;->s:F

    :goto_3
    move v13, v4

    .line 5
    :goto_4
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_14

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/a/b;

    if-nez v3, :cond_15

    goto/16 :goto_0

    :cond_15
    iget v9, v0, Lb/g/c/b/d;->a:I

    iget v4, v0, Lb/g/c/b/f;->h:I

    iget-object v5, v0, Lb/g/c/b/f;->i:Ljava/lang/String;

    iget v6, v0, Lb/g/c/b/f;->n:I

    iget v10, v0, Lb/g/c/b/f;->j:F

    iget v11, v0, Lb/g/c/b/f;->k:F

    iget v12, v0, Lb/g/c/b/f;->l:F

    .line 6
    iget-object v14, v3, Lb/g/a/h/a/e;->f:Ljava/util/ArrayList;

    new-instance v15, Lb/g/a/h/a/e$c;

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lb/g/a/h/a/e$c;-><init>(IFFFF)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v6, v7, :cond_16

    iput v6, v3, Lb/g/a/h/a/e;->e:I

    :cond_16
    iput v4, v3, Lb/g/a/h/a/e;->c:I

    iput-object v5, v3, Lb/g/a/h/a/e;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
