.class public Lb/g/c/b/q$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/c/b/q$b$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:F

.field public final j:Lb/g/c/b/q;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/c/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lb/g/c/b/t;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/c/b/q$b$a;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Z

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(ILb/g/c/b/q;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/g/c/b/q$b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/g/c/b/q$b;->b:Z

    iput v0, p0, Lb/g/c/b/q$b;->c:I

    iput v0, p0, Lb/g/c/b/q$b;->d:I

    iput v1, p0, Lb/g/c/b/q$b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lb/g/c/b/q$b;->f:Ljava/lang/String;

    iput v0, p0, Lb/g/c/b/q$b;->g:I

    const/16 v3, 0x190

    iput v3, p0, Lb/g/c/b/q$b;->h:I

    const/4 v3, 0x0

    iput v3, p0, Lb/g/c/b/q$b;->i:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    iput v1, p0, Lb/g/c/b/q$b;->n:I

    iput-boolean v1, p0, Lb/g/c/b/q$b;->o:Z

    iput v0, p0, Lb/g/c/b/q$b;->p:I

    iput v1, p0, Lb/g/c/b/q$b;->q:I

    iput v1, p0, Lb/g/c/b/q$b;->r:I

    iput p1, p0, Lb/g/c/b/q$b;->a:I

    iput-object p2, p0, Lb/g/c/b/q$b;->j:Lb/g/c/b/q;

    iput p3, p0, Lb/g/c/b/q$b;->d:I

    iput p4, p0, Lb/g/c/b/q$b;->c:I

    .line 1
    iget p1, p2, Lb/g/c/b/q;->j:I

    .line 2
    iput p1, p0, Lb/g/c/b/q$b;->h:I

    .line 3
    iget p1, p2, Lb/g/c/b/q;->k:I

    .line 4
    iput p1, p0, Lb/g/c/b/q$b;->q:I

    return-void
.end method

.method public constructor <init>(Lb/g/c/b/q;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/g/c/b/q$b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/g/c/b/q$b;->b:Z

    iput v0, p0, Lb/g/c/b/q$b;->c:I

    iput v0, p0, Lb/g/c/b/q$b;->d:I

    iput v1, p0, Lb/g/c/b/q$b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lb/g/c/b/q$b;->f:Ljava/lang/String;

    iput v0, p0, Lb/g/c/b/q$b;->g:I

    const/16 v3, 0x190

    iput v3, p0, Lb/g/c/b/q$b;->h:I

    const/4 v3, 0x0

    iput v3, p0, Lb/g/c/b/q$b;->i:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    iput v1, p0, Lb/g/c/b/q$b;->n:I

    iput-boolean v1, p0, Lb/g/c/b/q$b;->o:Z

    iput v0, p0, Lb/g/c/b/q$b;->p:I

    iput v1, p0, Lb/g/c/b/q$b;->q:I

    iput v1, p0, Lb/g/c/b/q$b;->r:I

    .line 5
    iget v2, p1, Lb/g/c/b/q;->j:I

    .line 6
    iput v2, p0, Lb/g/c/b/q$b;->h:I

    .line 7
    iget v2, p1, Lb/g/c/b/q;->k:I

    .line 8
    iput v2, p0, Lb/g/c/b/q$b;->q:I

    iput-object p1, p0, Lb/g/c/b/q$b;->j:Lb/g/c/b/q;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    .line 9
    sget-object v2, Lb/g/d/f;->Transition:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_10

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    sget v6, Lb/g/d/f;->Transition_constraintSetEnd:I

    const-string v7, "xml"

    const-string v8, "layout"

    if-ne v5, v6, :cond_1

    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->c:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lb/g/c/b/q$b;->c:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lb/g/d/c;

    invoke-direct {v4}, Lb/g/d/c;-><init>()V

    iget v5, p0, Lb/g/c/b/q$b;->c:I

    invoke-virtual {v4, p2, v5}, Lb/g/d/c;->j(Landroid/content/Context;I)V

    .line 11
    iget-object v5, p1, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    .line 12
    iget v6, p0, Lb/g/c/b/q$b;->c:I

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, p0, Lb/g/c/b/q$b;->c:I

    .line 13
    invoke-virtual {p1, p2, v4}, Lb/g/c/b/q;->k(Landroid/content/Context;I)I

    move-result v4

    .line 14
    iput v4, p0, Lb/g/c/b/q$b;->c:I

    goto/16 :goto_4

    :cond_1
    sget v6, Lb/g/d/f;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_3

    iget v4, p0, Lb/g/c/b/q$b;->d:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->d:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lb/g/c/b/q$b;->d:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Lb/g/d/c;

    invoke-direct {v4}, Lb/g/d/c;-><init>()V

    iget v5, p0, Lb/g/c/b/q$b;->d:I

    invoke-virtual {v4, p2, v5}, Lb/g/d/c;->j(Landroid/content/Context;I)V

    .line 15
    iget-object v5, p1, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    .line 16
    iget v6, p0, Lb/g/c/b/q$b;->d:I

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, p0, Lb/g/c/b/q$b;->d:I

    .line 17
    invoke-virtual {p1, p2, v4}, Lb/g/c/b/q;->k(Landroid/content/Context;I)I

    move-result v4

    .line 18
    iput v4, p0, Lb/g/c/b/q$b;->d:I

    goto/16 :goto_4

    :cond_3
    sget v6, Lb/g/d/f;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_7

    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v4, :cond_4

    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->g:I

    if-eq v4, v0, :cond_f

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    if-ne v6, v4, :cond_6

    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lb/g/c/b/q$b;->f:Ljava/lang/String;

    if-eqz v4, :cond_f

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->g:I

    :goto_2
    iput v7, p0, Lb/g/c/b/q$b;->e:I

    goto/16 :goto_4

    :cond_5
    const/4 v4, -0x1

    goto :goto_3

    :cond_6
    iget v4, p0, Lb/g/c/b/q$b;->e:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    :goto_3
    iput v4, p0, Lb/g/c/b/q$b;->e:I

    goto/16 :goto_4

    :cond_7
    sget v4, Lb/g/d/f;->Transition_duration:I

    if-ne v5, v4, :cond_8

    iget v4, p0, Lb/g/c/b/q$b;->h:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->h:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_f

    iput v5, p0, Lb/g/c/b/q$b;->h:I

    goto :goto_4

    :cond_8
    sget v4, Lb/g/d/f;->Transition_staggered:I

    if-ne v5, v4, :cond_9

    iget v4, p0, Lb/g/c/b/q$b;->i:F

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->i:F

    goto :goto_4

    :cond_9
    sget v4, Lb/g/d/f;->Transition_autoTransition:I

    if-ne v5, v4, :cond_a

    iget v4, p0, Lb/g/c/b/q$b;->n:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->n:I

    goto :goto_4

    :cond_a
    sget v4, Lb/g/d/f;->Transition_android_id:I

    if-ne v5, v4, :cond_b

    iget v4, p0, Lb/g/c/b/q$b;->a:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->a:I

    goto :goto_4

    :cond_b
    sget v4, Lb/g/d/f;->Transition_transitionDisable:I

    if-ne v5, v4, :cond_c

    iget-boolean v4, p0, Lb/g/c/b/q$b;->o:Z

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lb/g/c/b/q$b;->o:Z

    goto :goto_4

    :cond_c
    sget v4, Lb/g/d/f;->Transition_pathMotionArc:I

    if-ne v5, v4, :cond_d

    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->p:I

    goto :goto_4

    :cond_d
    sget v4, Lb/g/d/f;->Transition_layoutDuringTransition:I

    if-ne v5, v4, :cond_e

    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->q:I

    goto :goto_4

    :cond_e
    sget v4, Lb/g/d/f;->Transition_transitionFlags:I

    if-ne v5, v4, :cond_f

    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lb/g/c/b/q$b;->r:I

    :cond_f
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    iget p1, p0, Lb/g/c/b/q$b;->d:I

    if-ne p1, v0, :cond_11

    iput-boolean v4, p0, Lb/g/c/b/q$b;->b:Z

    .line 19
    :cond_11
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lb/g/c/b/q;Lb/g/c/b/q$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/g/c/b/q$b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/g/c/b/q$b;->b:Z

    iput v0, p0, Lb/g/c/b/q$b;->c:I

    iput v0, p0, Lb/g/c/b/q$b;->d:I

    iput v1, p0, Lb/g/c/b/q$b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lb/g/c/b/q$b;->f:Ljava/lang/String;

    iput v0, p0, Lb/g/c/b/q$b;->g:I

    const/16 v3, 0x190

    iput v3, p0, Lb/g/c/b/q$b;->h:I

    const/4 v3, 0x0

    iput v3, p0, Lb/g/c/b/q$b;->i:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    iput v1, p0, Lb/g/c/b/q$b;->n:I

    iput-boolean v1, p0, Lb/g/c/b/q$b;->o:Z

    iput v0, p0, Lb/g/c/b/q$b;->p:I

    iput v1, p0, Lb/g/c/b/q$b;->q:I

    iput v1, p0, Lb/g/c/b/q$b;->r:I

    iput-object p1, p0, Lb/g/c/b/q$b;->j:Lb/g/c/b/q;

    .line 20
    iget p1, p1, Lb/g/c/b/q;->j:I

    .line 21
    iput p1, p0, Lb/g/c/b/q$b;->h:I

    if-eqz p2, :cond_0

    iget p1, p2, Lb/g/c/b/q$b;->p:I

    iput p1, p0, Lb/g/c/b/q$b;->p:I

    iget p1, p2, Lb/g/c/b/q$b;->e:I

    iput p1, p0, Lb/g/c/b/q$b;->e:I

    iget-object p1, p2, Lb/g/c/b/q$b;->f:Ljava/lang/String;

    iput-object p1, p0, Lb/g/c/b/q$b;->f:Ljava/lang/String;

    iget p1, p2, Lb/g/c/b/q$b;->g:I

    iput p1, p0, Lb/g/c/b/q$b;->g:I

    iget p1, p2, Lb/g/c/b/q$b;->h:I

    iput p1, p0, Lb/g/c/b/q$b;->h:I

    iget-object p1, p2, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    iget p1, p2, Lb/g/c/b/q$b;->i:F

    iput p1, p0, Lb/g/c/b/q$b;->i:F

    iget p1, p2, Lb/g/c/b/q$b;->q:I

    iput p1, p0, Lb/g/c/b/q$b;->q:I

    :cond_0
    return-void
.end method
