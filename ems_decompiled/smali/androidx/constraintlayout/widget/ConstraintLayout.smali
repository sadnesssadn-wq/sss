.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;,
        Landroidx/constraintlayout/widget/ConstraintLayout$a;
    }
.end annotation


# static fields
.field public static v:Lb/g/d/g;


# instance fields
.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lb/g/a/i/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:I

.field public l:Lb/g/d/c;

.field public m:Lb/g/d/b;

.field public n:I

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:I

.field public r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lb/g/a/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public s:Landroidx/constraintlayout/widget/ConstraintLayout$a;

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    new-instance p1, Lb/g/a/i/e;

    invoke-direct {p1}, Lb/g/a/i/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/d/c;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lb/g/d/b;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    invoke-virtual {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    new-instance p1, Lb/g/a/i/e;

    invoke-direct {p1}, Lb/g/a/i/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/d/c;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lb/g/d/b;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    invoke-virtual {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static getSharedValues()Lb/g/d/g;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Lb/g/d/g;

    if-nez v0, :cond_0

    new-instance v0, Lb/g/d/g;

    invoke-direct {v0}, Lb/g/d/g;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Lb/g/d/g;

    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Lb/g/d/g;

    return-object v0
.end method


# virtual methods
.method public b(ZLandroid/view/View;Lb/g/a/i/d;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Lb/g/a/i/d;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Lb/g/a/i/d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v3, p5

    sget-object v8, Lb/g/a/i/d$a;->f:Lb/g/a/i/d$a;

    sget-object v9, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    sget-object v10, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    sget-object v11, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    sget-object v12, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    sget-object v13, Lb/g/a/i/c$a;->d:Lb/g/a/i/c$a;

    sget-object v14, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    sget-object v15, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1
    iput v1, v6, Lb/g/a/i/d;->o0:I

    .line 2
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v5, v6, Lb/g/a/i/d;->G:Z

    const/16 v1, 0x8

    .line 4
    iput v1, v6, Lb/g/a/i/d;->o0:I

    .line 5
    :cond_0
    iput-object v0, v6, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    .line 6
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    move-object/from16 v4, p0

    iget-object v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 7
    iget-boolean v1, v1, Lb/g/a/i/e;->R0:Z

    .line 8
    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->p(Lb/g/a/i/d;Z)V

    goto :goto_0

    :cond_1
    move-object/from16 v4, p0

    :goto_0
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    move-object v0, v6

    check-cast v0, Lb/g/a/i/g;

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n0:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o0:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_2

    cmpl-float v1, v5, v6

    if-lez v1, :cond_2b

    .line 9
    iput v5, v0, Lb/g/a/i/g;->M0:F

    iput v2, v0, Lb/g/a/i/g;->N0:I

    iput v2, v0, Lb/g/a/i/g;->O0:I

    goto/16 :goto_16

    :cond_2
    if-eq v1, v2, :cond_3

    if-le v1, v2, :cond_2b

    .line 10
    iput v6, v0, Lb/g/a/i/g;->M0:F

    iput v1, v0, Lb/g/a/i/g;->N0:I

    iput v2, v0, Lb/g/a/i/g;->O0:I

    goto/16 :goto_16

    :cond_3
    if-eq v3, v2, :cond_2b

    if-le v3, v2, :cond_2b

    .line 11
    iput v6, v0, Lb/g/a/i/g;->M0:F

    iput v2, v0, Lb/g/a/i/g;->N0:I

    iput v3, v0, Lb/g/a/i/g;->O0:I

    goto/16 :goto_16

    .line 12
    :cond_4
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:I

    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:I

    move-object/from16 v16, v9

    iget v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:I

    move-object/from16 v17, v10

    iget v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:F

    move-object/from16 v18, v8

    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:I

    move-object/from16 v19, v11

    const/4 v11, -0x1

    if-eq v8, v11, :cond_6

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    if-eqz v0, :cond_5

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:F

    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 13
    sget-object v3, Lb/g/a/i/c$a;->i:Lb/g/a/i/c$a;

    .line 14
    invoke-virtual {v6, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    invoke-virtual {v0, v3}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v5, v3}, Lb/g/a/i/c;->b(Lb/g/a/i/c;IIZ)Z

    .line 15
    iput v1, v6, Lb/g/a/i/d;->E:F

    :cond_5
    const/4 v9, -0x1

    const/4 v11, 0x1

    goto/16 :goto_b

    :cond_6
    const/4 v8, -0x1

    if-eq v0, v8, :cond_7

    .line 16
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    if-eqz v0, :cond_8

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    invoke-virtual {v6, v13}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v11

    invoke-virtual {v0, v13}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    :goto_1
    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    if-eq v1, v8, :cond_8

    .line 18
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    if-eqz v0, :cond_8

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 19
    invoke-virtual {v6, v13}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v11

    invoke-virtual {v0, v12}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual {v11, v0, v1, v4, v8}, Lb/g/a/i/c;->b(Lb/g/a/i/c;IIZ)Z

    :cond_8
    const/4 v0, -0x1

    if-eq v5, v0, :cond_9

    .line 20
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/d;

    if-eqz v1, :cond_a

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    invoke-virtual {v6, v12}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    invoke-virtual {v1, v13}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v1

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    if-eq v2, v0, :cond_a

    .line 22
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    if-eqz v0, :cond_a

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 23
    invoke-virtual {v6, v12}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    invoke-virtual {v0, v12}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v1

    goto :goto_3

    :goto_4
    invoke-virtual {v4, v1, v2, v9, v0}, Lb/g/a/i/c;->b(Lb/g/a/i/c;IIZ)Z

    .line 24
    :cond_a
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    if-eqz v0, :cond_c

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 25
    invoke-virtual {v6, v15}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v5

    invoke-virtual {v0, v15}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    .line 26
    :cond_b
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    if-eq v0, v1, :cond_c

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    if-eqz v0, :cond_c

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 27
    invoke-virtual {v6, v15}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v5

    invoke-virtual {v0, v14}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    goto :goto_5

    :goto_6
    invoke-virtual {v5, v0, v2, v4, v1}, Lb/g/a/i/c;->b(Lb/g/a/i/c;IIZ)Z

    .line 28
    :cond_c
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    if-eqz v0, :cond_e

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 29
    invoke-virtual {v6, v14}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    invoke-virtual {v0, v15}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    goto :goto_7

    .line 30
    :cond_d
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    if-eqz v0, :cond_e

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 31
    invoke-virtual {v6, v14}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v4

    invoke-virtual {v0, v14}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    :goto_7
    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v2, v5}, Lb/g/a/i/c;->b(Lb/g/a/i/c;IIZ)Z

    goto :goto_8

    :cond_e
    const/4 v5, 0x1

    .line 32
    :goto_8
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    sget-object v1, Lb/g/a/i/c$a;->h:Lb/g/a/i/c$a;

    move v4, v0

    move-object v8, v1

    goto :goto_9

    :cond_f
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    if-eq v0, v2, :cond_10

    move v4, v0

    move-object v8, v15

    goto :goto_9

    :cond_10
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    if-eq v0, v2, :cond_11

    move v4, v0

    move-object v8, v14

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v9, -0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v11, 0x1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->s(Lb/g/a/i/d;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILb/g/a/i/c$a;)V

    goto :goto_a

    :cond_11
    const/4 v9, -0x1

    const/4 v11, 0x1

    :goto_a
    const/4 v0, 0x0

    cmpl-float v1, v10, v0

    if-ltz v1, :cond_12

    .line 33
    iput v10, v6, Lb/g/a/i/d;->k0:F

    .line 34
    :cond_12
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_13

    .line 35
    iput v1, v6, Lb/g/a/i/d;->l0:F

    :cond_13
    :goto_b
    if-eqz p1, :cond_15

    .line 36
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:I

    if-ne v0, v9, :cond_14

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:I

    if-eq v1, v9, :cond_15

    :cond_14
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:I

    .line 37
    iput v0, v6, Lb/g/a/i/d;->b0:I

    iput v1, v6, Lb/g/a/i/d;->c0:I

    .line 38
    :cond_15
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    const/4 v1, -0x2

    if-nez v0, :cond_18

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v9, :cond_17

    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v0, :cond_16

    .line 39
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v2, 0x0

    aput-object v19, v0, v2

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v18, v0, v2

    .line 40
    :goto_c
    invoke-virtual {v6, v13}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v0, Lb/g/a/i/c;->g:I

    invoke-virtual {v6, v12}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v0, Lb/g/a/i/c;->g:I

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    .line 41
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v19, v0, v2

    .line 42
    invoke-virtual {v6, v2}, Lb/g/a/i/d;->T(I)V

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    .line 43
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v17, v0, v2

    .line 44
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v6, v0}, Lb/g/a/i/d;->T(I)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v1, :cond_19

    .line 45
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v16, v0, v2

    .line 46
    :cond_19
    :goto_d
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    if-nez v0, :cond_1c

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v9, :cond_1b

    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v0, :cond_1a

    .line 47
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v19, v0, v11

    goto :goto_e

    :cond_1a
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v18, v0, v11

    .line 48
    :goto_e
    invoke-virtual {v6, v15}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Lb/g/a/i/c;->g:I

    invoke-virtual {v6, v14}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Lb/g/a/i/c;->g:I

    goto :goto_f

    .line 49
    :cond_1b
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v19, v0, v11

    const/4 v0, 0x0

    .line 50
    invoke-virtual {v6, v0}, Lb/g/a/i/d;->O(I)V

    goto :goto_f

    .line 51
    :cond_1c
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v17, v0, v11

    .line 52
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v6, v0}, Lb/g/a/i/d;->O(I)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v1, :cond_1d

    .line 53
    iget-object v0, v6, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v16, v0, v11

    .line 54
    :cond_1d
    :goto_f
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_13

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_21

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_21

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v3, "W"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v5, 0x0

    goto :goto_10

    :cond_1f
    const-string v3, "H"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v5, 0x1

    goto :goto_10

    :cond_20
    const/4 v5, -0x1

    :goto_10
    add-int/2addr v2, v11

    move/from16 v20, v5

    move v5, v2

    move/from16 v2, v20

    goto :goto_11

    :cond_21
    const/4 v2, -0x1

    const/4 v5, 0x0

    :goto_11
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_23

    sub-int/2addr v1, v11

    if-ge v3, v1, :cond_23

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v3, v11

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_24

    cmpl-float v4, v0, v3

    if-lez v4, :cond_24

    if-ne v2, v11, :cond_22

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_12

    :cond_22
    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :cond_23
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    :catch_0
    :cond_24
    const/4 v0, 0x0

    :goto_12
    const/4 v1, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_26

    iput v0, v6, Lb/g/a/i/d;->Z:F

    iput v2, v6, Lb/g/a/i/d;->a0:I

    goto :goto_14

    :cond_25
    :goto_13
    const/4 v1, 0x0

    iput v1, v6, Lb/g/a/i/d;->Z:F

    .line 56
    :cond_26
    :goto_14
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:F

    .line 57
    iget-object v1, v6, Lb/g/a/i/d;->F0:[F

    const/4 v5, 0x0

    aput v0, v1, v5

    .line 58
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:F

    .line 59
    aput v0, v1, v11

    .line 60
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 61
    iput v0, v6, Lb/g/a/i/d;->B0:I

    .line 62
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 63
    iput v0, v6, Lb/g/a/i/d;->C0:I

    .line 64
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:I

    if-ltz v0, :cond_27

    const/4 v1, 0x3

    if-gt v0, v1, :cond_27

    .line 65
    iput v0, v6, Lb/g/a/i/d;->p:I

    .line 66
    :cond_27
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:F

    .line 67
    iput v0, v6, Lb/g/a/i/d;->q:I

    iput v1, v6, Lb/g/a/i/d;->t:I

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_28

    const/4 v2, 0x0

    :cond_28
    iput v2, v6, Lb/g/a/i/d;->u:I

    iput v3, v6, Lb/g/a/i/d;->v:F

    const/4 v2, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    cmpl-float v9, v3, v8

    if-lez v9, :cond_29

    cmpg-float v3, v3, v4

    if-gez v3, :cond_29

    if-nez v0, :cond_29

    iput v2, v6, Lb/g/a/i/d;->q:I

    .line 68
    :cond_29
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:I

    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:F

    .line 69
    iput v0, v6, Lb/g/a/i/d;->r:I

    iput v3, v6, Lb/g/a/i/d;->w:I

    if-ne v8, v1, :cond_2a

    const/4 v11, 0x0

    goto :goto_15

    :cond_2a
    move v11, v8

    :goto_15
    iput v11, v6, Lb/g/a/i/d;->x:I

    iput v7, v6, Lb/g/a/i/d;->y:F

    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_2b

    cmpg-float v1, v7, v4

    if-gez v1, :cond_2b

    if-nez v0, :cond_2b

    iput v2, v6, Lb/g/a/i/d;->r:I

    :cond_2b
    :goto_16
    return-void
.end method

.method public c()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->s(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x44870000    # 1080.0f

    const/high16 v5, 0x44f00000    # 1920.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v4

    mul-float v9, v9, v1

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v5

    mul-float v10, v10, v3

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v4

    mul-float v11, v11, v1

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v5

    mul-float v8, v8, v3

    float-to-int v8, v8

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public e(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public forceLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public final g(Landroid/view/View;)Lb/g/a/i/d;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Lb/g/a/i/d;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 1
    iget v0, v0, Lb/g/a/i/e;->Z0:I

    return v0
.end method

.method public final h(Landroid/util/AttributeSet;II)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 1
    iput-object p0, v0, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v0, v1}, Lb/g/a/i/e;->h0(Lb/g/a/i/m/b$b;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/d/c;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lb/g/d/f;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lb/g/d/f;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    :cond_0
    sget v3, Lb/g/d/f;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v2, v3, :cond_1

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    :cond_1
    sget v3, Lb/g/d/f;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_2

    :cond_2
    sget v3, Lb/g/d/f;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    :cond_3
    sget v3, Lb/g/d/f;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v2, v3, :cond_4

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    goto :goto_2

    :cond_4
    sget v3, Lb/g/d/f;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lb/g/d/b;

    goto :goto_2

    :cond_5
    sget v3, Lb/g/d/f;->ConstraintLayout_Layout_constraintSet:I

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :try_start_1
    new-instance v3, Lb/g/d/c;

    invoke-direct {v3}, Lb/g/d/c;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/d/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lb/g/d/c;->j(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/d/c;

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-virtual {p1, p2}, Lb/g/a/i/e;->i0(I)V

    return-void
.end method

.method public k()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public l(I)V
    .locals 2

    new-instance v0, Lb/g/d/b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lb/g/d/b;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lb/g/d/b;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Lb/g/a/i/d;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lb/g/a/i/d;->x()I

    move-result v0

    invoke-virtual {v1}, Lb/g/a/i/d;->y()I

    move-result v2

    invoke-virtual {v1}, Lb/g/a/i/d;->w()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lb/g/a/i/d;->q()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_2

    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v6, p1

    move/from16 v8, p2

    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    if-ne v0, v6, :cond_0

    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    :cond_0
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    iput v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result v3

    .line 1
    iput-boolean v3, v0, Lb/g/a/i/e;->R0:Z

    .line 2
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    if-eqz v0, :cond_1d

    iput-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_1c

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_6

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lb/g/a/i/d;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lb/g/a/i/d;->H()V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, -0x1

    if-eqz v10, :cond_c

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v11, :cond_c

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v1, v5, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->r(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v12, 0x2f

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v0, :cond_7

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_7

    .line 5
    :cond_8
    iget-object v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_9

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_9

    if-eq v12, v7, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, v7, :cond_9

    invoke-virtual {v7, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_9
    if-ne v12, v7, :cond_a

    :goto_7
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    goto :goto_8

    :cond_a
    if-nez v12, :cond_b

    const/4 v4, 0x0

    goto :goto_8

    :cond_b
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Lb/g/a/i/d;

    .line 6
    :goto_8
    iput-object v5, v4, Lb/g/a/i/d;->p0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 7
    :cond_c
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    if-eq v3, v0, :cond_e

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v11, :cond_e

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    if-ne v5, v12, :cond_d

    instance-of v5, v4, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v5, :cond_d

    check-cast v4, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Lb/g/d/c;

    move-result-object v4

    iput-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/d/c;

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/d/c;

    if-eqz v3, :cond_f

    invoke-virtual {v3, v7, v2}, Lb/g/d/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    :cond_f
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 8
    iget-object v3, v3, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_15

    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 10
    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    :cond_10
    iget-object v12, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->f:Lb/g/a/i/h;

    if-nez v12, :cond_11

    goto :goto_c

    :cond_11
    invoke-interface {v12}, Lb/g/a/i/h;->b()V

    const/4 v12, 0x0

    :goto_b
    iget v13, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->d:I

    if-ge v12, v13, :cond_14

    iget-object v13, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->c:[I

    aget v13, v13, v12

    invoke-virtual {v7, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_12

    iget-object v15, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->j:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5, v7, v13}, Landroidx/constraintlayout/widget/ConstraintHelper;->k(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_12

    iget-object v14, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->c:[I

    aput v15, v14, v12

    iget-object v14, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->j:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(I)Landroid/view/View;

    move-result-object v14

    :cond_12
    if-eqz v14, :cond_13

    iget-object v1, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->f:Lb/g/a/i/h;

    invoke-virtual {v7, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lb/g/a/i/d;

    move-result-object v13

    invoke-interface {v1, v13}, Lb/g/a/i/h;->c(Lb/g/a/i/d;)V

    :cond_13
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto :goto_b

    :cond_14
    iget-object v1, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->f:Lb/g/a/i/h;

    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    invoke-interface {v1, v5}, Lb/g/a/i/h;->a(Lb/g/a/i/e;)V

    :goto_c
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v11, :cond_18

    .line 11
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_17

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    .line 12
    iget v4, v3, Landroidx/constraintlayout/widget/Placeholder;->c:I

    if-ne v4, v0, :cond_16

    invoke-virtual {v3}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_16

    iget v4, v3, Landroidx/constraintlayout/widget/Placeholder;->e:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget v4, v3, Landroidx/constraintlayout/widget/Placeholder;->c:I

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/Placeholder;->d:Landroid/view/View;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-boolean v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:Z

    iget-object v4, v3, Landroidx/constraintlayout/widget/Placeholder;->d:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_17
    const/4 v5, 0x0

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    const/4 v5, 0x0

    .line 13
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v11, :cond_19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lb/g/a/i/d;

    move-result-object v2

    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_19
    const/4 v12, 0x0

    :goto_10
    if-ge v12, v11, :cond_1c

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lb/g/a/i/d;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_11

    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 14
    iget-object v1, v0, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, v3, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v1, :cond_1b

    .line 16
    check-cast v1, Lb/g/a/i/l;

    .line 17
    iget-object v1, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lb/g/a/i/d;->H()V

    .line 18
    :cond_1b
    iput-object v0, v3, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    .line 19
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(ZLandroid/view/View;Lb/g/a/i/d;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    :goto_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_1c
    if-eqz v9, :cond_1d

    .line 20
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 21
    iget-object v1, v0, Lb/g/a/i/e;->N0:Lb/g/a/i/m/b;

    invoke-virtual {v1, v0}, Lb/g/a/i/m/b;->c(Lb/g/a/i/e;)V

    .line 22
    :cond_1d
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-virtual {v7, v0, v1, v6, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    invoke-virtual {v0}, Lb/g/a/i/d;->w()I

    move-result v3

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    invoke-virtual {v0}, Lb/g/a/i/d;->q()I

    move-result v4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 23
    iget-boolean v5, v0, Lb/g/a/i/e;->a1:Z

    .line 24
    iget-boolean v9, v0, Lb/g/a/i/e;->b1:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v9

    .line 25
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lb/g/a/i/d;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lb/g/a/i/g;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    new-instance v1, Lb/g/a/i/g;

    invoke-direct {v1}, Lb/g/a/i/g;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Lb/g/a/i/d;

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:Z

    check-cast v1, Lb/g/a/i/g;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:I

    invoke-virtual {v1, v0}, Lb/g/a/i/g;->X(I)V

    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->u()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Lb/g/a/i/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 1
    iget-object v1, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lb/g/a/i/d;->H()V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    return-void
.end method

.method public p(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {p4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    return-void
.end method

.method public q(Lb/g/a/i/e;III)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v11, v8, v10

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v12

    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1
    iput v8, v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:I

    iput v12, v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    iput v11, v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    move/from16 v10, p3

    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    move/from16 v10, p4

    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-gtz v10, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result v14

    if-eqz v14, :cond_2

    move v10, v13

    :cond_2
    :goto_1
    sub-int/2addr v5, v12

    sub-int/2addr v7, v11

    .line 3
    sget-object v11, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget v13, v12, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    iget v12, v12, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/high16 v15, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v15, :cond_6

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    move-object v9, v3

    goto :goto_2

    :cond_3
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v9, v12

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v16, v3

    move v15, v9

    move-object/from16 v9, v16

    goto :goto_5

    :cond_4
    if-nez v14, :cond_5

    goto :goto_3

    :cond_5
    move-object v9, v11

    :goto_2
    move-object/from16 v16, v3

    const/high16 v3, -0x80000000

    const/4 v15, 0x0

    goto :goto_6

    :cond_6
    if-nez v14, :cond_7

    :goto_3
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_4

    :cond_7
    move v9, v5

    :goto_4
    move-object/from16 v16, v3

    move v15, v9

    move-object v9, v11

    :goto_5
    const/high16 v3, -0x80000000

    :goto_6
    if-eq v6, v3, :cond_b

    if-eqz v6, :cond_9

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v6, v3, :cond_8

    move-object/from16 v3, v16

    goto :goto_7

    :cond_8
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    sub-int/2addr v3, v13

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v14, v3

    move-object/from16 p4, v11

    move-object/from16 v3, v16

    goto :goto_a

    :cond_9
    if-nez v14, :cond_a

    goto :goto_8

    :cond_a
    move-object v3, v11

    :goto_7
    move-object/from16 p4, v11

    const/4 v14, 0x0

    goto :goto_a

    :cond_b
    if-nez v14, :cond_c

    :goto_8
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v14, 0x0

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v14, v3

    goto :goto_9

    :cond_c
    move v14, v7

    :goto_9
    move-object/from16 p4, v11

    move-object/from16 v3, p4

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->w()I

    move-result v11

    move/from16 v17, v7

    const/4 v7, 0x1

    if-ne v15, v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->q()I

    move-result v11

    if-eq v14, v11, :cond_e

    .line 4
    :cond_d
    iget-object v11, v1, Lb/g/a/i/e;->O0:Lb/g/a/i/m/e;

    .line 5
    iput-boolean v7, v11, Lb/g/a/i/m/e;->c:Z

    :cond_e
    const/4 v11, 0x0

    .line 6
    iput v11, v1, Lb/g/a/i/d;->b0:I

    .line 7
    iput v11, v1, Lb/g/a/i/d;->c0:I

    .line 8
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v7, v12

    move/from16 v19, v5

    .line 9
    iget-object v5, v1, Lb/g/a/i/d;->D:[I

    aput v7, v5, v11

    .line 10
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    sub-int/2addr v7, v13

    const/16 v18, 0x1

    .line 11
    aput v7, v5, v18

    .line 12
    invoke-virtual {v1, v11}, Lb/g/a/i/d;->R(I)V

    invoke-virtual {v1, v11}, Lb/g/a/i/d;->Q(I)V

    .line 13
    iget-object v5, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v9, v5, v11

    .line 14
    invoke-virtual {v1, v15}, Lb/g/a/i/d;->T(I)V

    .line 15
    iget-object v5, v1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v3, v5, v18

    .line 16
    invoke-virtual {v1, v14}, Lb/g/a/i/d;->O(I)V

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v3, v12

    invoke-virtual {v1, v3}, Lb/g/a/i/d;->R(I)V

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v3, v13

    invoke-virtual {v1, v3}, Lb/g/a/i/d;->Q(I)V

    .line 17
    iput v10, v1, Lb/g/a/i/e;->T0:I

    iput v8, v1, Lb/g/a/i/e;->U0:I

    iget-object v3, v1, Lb/g/a/i/e;->N0:Lb/g/a/i/m/b;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v5, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    sget-object v7, Lb/g/a/i/c$a;->f:Lb/g/a/i/c$a;

    sget-object v8, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    iget-object v9, v1, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    .line 20
    iget-object v10, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->w()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->q()I

    move-result v12

    const/16 v13, 0x80

    invoke-static {v2, v13}, Lb/g/a/i/j;->b(II)Z

    move-result v13

    const/16 v14, 0x40

    if-nez v13, :cond_10

    invoke-static {v2, v14}, Lb/g/a/i/j;->b(II)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_19

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v10, :cond_19

    iget-object v15, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/g/a/i/d;

    invoke-virtual {v15}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v0

    move/from16 v21, v2

    if-ne v0, v8, :cond_11

    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v15}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v2

    if-ne v2, v8, :cond_12

    const/4 v2, 0x1

    goto :goto_f

    :cond_12
    const/4 v2, 0x0

    :goto_f
    if-eqz v0, :cond_13

    if-eqz v2, :cond_13

    .line 21
    iget v0, v15, Lb/g/a/i/d;->Z:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_10

    :cond_13
    const/4 v0, 0x0

    .line 22
    :goto_10
    invoke-virtual {v15}, Lb/g/a/i/d;->C()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    goto :goto_11

    :cond_14
    invoke-virtual {v15}, Lb/g/a/i/d;->D()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v0, :cond_15

    goto :goto_11

    :cond_15
    instance-of v0, v15, Lb/g/a/i/k;

    if-eqz v0, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {v15}, Lb/g/a/i/d;->C()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v15}, Lb/g/a/i/d;->D()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_11

    :cond_17
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v21

    goto :goto_d

    :cond_18
    :goto_11
    const/high16 v0, 0x40000000    # 2.0f

    const/16 v21, 0x0

    goto :goto_12

    :cond_19
    move/from16 v21, v2

    const/high16 v0, 0x40000000    # 2.0f

    :goto_12
    if-ne v4, v0, :cond_1a

    if-eq v6, v0, :cond_1b

    :cond_1a
    if-eqz v13, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    :goto_13
    and-int v0, v21, v0

    if-eqz v0, :cond_3b

    .line 23
    iget-object v14, v1, Lb/g/a/i/d;->D:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move/from16 v15, v19

    .line 24
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 25
    iget-object v15, v1, Lb/g/a/i/d;->D:[I

    const/16 v18, 0x1

    aget v15, v15, v18

    move/from16 v2, v17

    .line 26
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v4, v15, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->w()I

    move-result v15

    if-eq v15, v14, :cond_1d

    invoke-virtual {v1, v14}, Lb/g/a/i/d;->T(I)V

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/e;->e0()V

    :cond_1d
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v6, v14, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->q()I

    move-result v15

    if-eq v15, v2, :cond_1e

    invoke-virtual {v1, v2}, Lb/g/a/i/d;->O(I)V

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/e;->e0()V

    :cond_1e
    if-ne v4, v14, :cond_34

    if-ne v6, v14, :cond_34

    .line 27
    iget-object v2, v1, Lb/g/a/i/e;->O0:Lb/g/a/i/m/e;

    .line 28
    sget-object v14, Lb/g/a/i/d$a;->f:Lb/g/a/i/d$a;

    const/4 v15, 0x1

    and-int/2addr v13, v15

    iget-boolean v15, v2, Lb/g/a/i/m/e;->b:Z

    if-nez v15, :cond_20

    iget-boolean v15, v2, Lb/g/a/i/m/e;->c:Z

    if-eqz v15, :cond_1f

    goto :goto_14

    :cond_1f
    move/from16 v17, v0

    const/4 v15, 0x0

    goto :goto_16

    :cond_20
    :goto_14
    iget-object v15, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v15, v15, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_15
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v15

    move-object/from16 v15, v17

    check-cast v15, Lb/g/a/i/d;

    invoke-virtual {v15}, Lb/g/a/i/d;->m()V

    move/from16 v17, v0

    const/4 v0, 0x0

    iput-boolean v0, v15, Lb/g/a/i/d;->a:Z

    iget-object v0, v15, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    invoke-virtual {v0}, Lb/g/a/i/m/k;->n()V

    iget-object v0, v15, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    invoke-virtual {v0}, Lb/g/a/i/m/m;->m()V

    move/from16 v0, v17

    move-object/from16 v15, v21

    goto :goto_15

    :cond_21
    move/from16 v17, v0

    iget-object v0, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v0}, Lb/g/a/i/d;->m()V

    iget-object v0, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    const/4 v15, 0x0

    iput-boolean v15, v0, Lb/g/a/i/d;->a:Z

    iget-object v0, v0, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    invoke-virtual {v0}, Lb/g/a/i/m/k;->n()V

    iget-object v0, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v0, v0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    invoke-virtual {v0}, Lb/g/a/i/m/m;->m()V

    iput-boolean v15, v2, Lb/g/a/i/m/e;->c:Z

    :goto_16
    iget-object v0, v2, Lb/g/a/i/m/e;->d:Lb/g/a/i/e;

    invoke-virtual {v2, v0}, Lb/g/a/i/m/e;->b(Lb/g/a/i/e;)Z

    iget-object v0, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    .line 29
    iput v15, v0, Lb/g/a/i/d;->b0:I

    .line 30
    iput v15, v0, Lb/g/a/i/d;->c0:I

    .line 31
    invoke-virtual {v0, v15}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v0

    iget-object v15, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    move-object/from16 v21, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v15

    iget-boolean v5, v2, Lb/g/a/i/m/e;->b:Z

    if-eqz v5, :cond_22

    invoke-virtual {v2}, Lb/g/a/i/m/e;->c()V

    :cond_22
    iget-object v5, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v5}, Lb/g/a/i/d;->x()I

    move-result v5

    move-object/from16 v22, v7

    iget-object v7, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v7}, Lb/g/a/i/d;->y()I

    move-result v7

    move-object/from16 v23, v9

    iget-object v9, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v9, v9, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v9, v9, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-virtual {v9, v5}, Lb/g/a/i/m/f;->c(I)V

    iget-object v9, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v9, v9, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v9, v9, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-virtual {v9, v7}, Lb/g/a/i/m/f;->c(I)V

    invoke-virtual {v2}, Lb/g/a/i/m/e;->g()V

    move-object/from16 v9, p4

    if-eq v0, v9, :cond_24

    if-ne v15, v9, :cond_23

    goto :goto_17

    :cond_23
    move-object/from16 v25, v3

    move/from16 p4, v11

    move/from16 v24, v12

    goto/16 :goto_1a

    :cond_24
    :goto_17
    move/from16 p4, v13

    if-eqz v13, :cond_26

    iget-object v13, v2, Lb/g/a/i/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_25
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_26

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lb/g/a/i/m/o;

    invoke-virtual/range {v24 .. v24}, Lb/g/a/i/m/o;->k()Z

    move-result v24

    if-nez v24, :cond_25

    const/4 v13, 0x0

    goto :goto_18

    :cond_26
    move/from16 v13, p4

    :goto_18
    if-eqz v13, :cond_27

    if-ne v0, v9, :cond_27

    move/from16 p4, v11

    iget-object v11, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    move/from16 v24, v12

    .line 32
    iget-object v12, v11, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    move-object/from16 v25, v3

    const/4 v3, 0x0

    aput-object v16, v12, v3

    .line 33
    invoke-virtual {v2, v11, v3}, Lb/g/a/i/m/e;->d(Lb/g/a/i/e;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lb/g/a/i/d;->T(I)V

    iget-object v3, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v11, v3, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v11, v11, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    invoke-virtual {v3}, Lb/g/a/i/d;->w()I

    move-result v3

    invoke-virtual {v11, v3}, Lb/g/a/i/m/g;->c(I)V

    goto :goto_19

    :cond_27
    move-object/from16 v25, v3

    move/from16 p4, v11

    move/from16 v24, v12

    :goto_19
    if-eqz v13, :cond_28

    if-ne v15, v9, :cond_28

    iget-object v3, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    .line 34
    iget-object v11, v3, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v12, 0x1

    aput-object v16, v11, v12

    .line 35
    invoke-virtual {v2, v3, v12}, Lb/g/a/i/m/e;->d(Lb/g/a/i/e;I)I

    move-result v11

    invoke-virtual {v3, v11}, Lb/g/a/i/d;->O(I)V

    iget-object v3, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v11, v3, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v11, v11, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    invoke-virtual {v3}, Lb/g/a/i/d;->q()I

    move-result v3

    invoke-virtual {v11, v3}, Lb/g/a/i/m/g;->c(I)V

    :cond_28
    :goto_1a
    iget-object v3, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v11, v3, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v12, 0x0

    aget-object v13, v11, v12

    move-object/from16 v26, v9

    move-object/from16 v9, v16

    if-eq v13, v9, :cond_2a

    aget-object v11, v11, v12

    if-ne v11, v14, :cond_29

    goto :goto_1b

    :cond_29
    const/4 v3, 0x0

    goto :goto_1c

    :cond_2a
    :goto_1b
    invoke-virtual {v3}, Lb/g/a/i/d;->w()I

    move-result v3

    add-int/2addr v3, v5

    iget-object v11, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v11, v11, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v11, v11, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    invoke-virtual {v11, v3}, Lb/g/a/i/m/f;->c(I)V

    iget-object v11, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v11, v11, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v11, v11, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    sub-int/2addr v3, v5

    invoke-virtual {v11, v3}, Lb/g/a/i/m/g;->c(I)V

    invoke-virtual {v2}, Lb/g/a/i/m/e;->g()V

    iget-object v3, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v5, v3, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v11, 0x1

    aget-object v12, v5, v11

    if-eq v12, v9, :cond_2b

    aget-object v5, v5, v11

    if-ne v5, v14, :cond_2c

    :cond_2b
    invoke-virtual {v3}, Lb/g/a/i/d;->q()I

    move-result v3

    add-int/2addr v3, v7

    iget-object v5, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v5, v5, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v5, v5, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    invoke-virtual {v5, v3}, Lb/g/a/i/m/f;->c(I)V

    iget-object v5, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v5, v5, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v5, v5, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    sub-int/2addr v3, v7

    invoke-virtual {v5, v3}, Lb/g/a/i/m/g;->c(I)V

    :cond_2c
    invoke-virtual {v2}, Lb/g/a/i/m/e;->g()V

    const/4 v3, 0x1

    :goto_1c
    iget-object v5, v2, Lb/g/a/i/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/a/i/m/o;

    iget-object v9, v7, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    iget-object v11, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    if-ne v9, v11, :cond_2d

    iget-boolean v9, v7, Lb/g/a/i/m/o;->g:Z

    if-nez v9, :cond_2d

    goto :goto_1d

    :cond_2d
    invoke-virtual {v7}, Lb/g/a/i/m/o;->e()V

    goto :goto_1d

    :cond_2e
    iget-object v5, v2, Lb/g/a/i/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2f
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/a/i/m/o;

    if-nez v3, :cond_30

    iget-object v9, v7, Lb/g/a/i/m/o;->b:Lb/g/a/i/d;

    iget-object v11, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    if-ne v9, v11, :cond_30

    goto :goto_1e

    :cond_30
    iget-object v9, v7, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    iget-boolean v9, v9, Lb/g/a/i/m/f;->j:Z

    if-nez v9, :cond_31

    goto :goto_1f

    :cond_31
    iget-object v9, v7, Lb/g/a/i/m/o;->i:Lb/g/a/i/m/f;

    iget-boolean v9, v9, Lb/g/a/i/m/f;->j:Z

    if-nez v9, :cond_32

    instance-of v9, v7, Lb/g/a/i/m/i;

    if-nez v9, :cond_32

    goto :goto_1f

    :cond_32
    iget-object v9, v7, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iget-boolean v9, v9, Lb/g/a/i/m/f;->j:Z

    if-nez v9, :cond_2f

    instance-of v9, v7, Lb/g/a/i/m/c;

    if-nez v9, :cond_2f

    instance-of v7, v7, Lb/g/a/i/m/i;

    if-nez v7, :cond_2f

    :goto_1f
    const/4 v3, 0x0

    goto :goto_20

    :cond_33
    const/4 v3, 0x1

    :goto_20
    iget-object v5, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v5, v0}, Lb/g/a/i/d;->P(Lb/g/a/i/d$a;)V

    iget-object v0, v2, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v0, v15}, Lb/g/a/i/d;->S(Lb/g/a/i/d$a;)V

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x2

    goto/16 :goto_24

    :cond_34
    move-object/from16 v26, p4

    move/from16 v17, v0

    move-object/from16 v25, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    move/from16 p4, v11

    move/from16 v24, v12

    .line 36
    iget-object v0, v1, Lb/g/a/i/e;->O0:Lb/g/a/i/m/e;

    .line 37
    iget-boolean v2, v0, Lb/g/a/i/m/e;->b:Z

    if-eqz v2, :cond_36

    iget-object v2, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v2, v2, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    invoke-virtual {v3}, Lb/g/a/i/d;->m()V

    const/4 v5, 0x0

    iput-boolean v5, v3, Lb/g/a/i/d;->a:Z

    iget-object v7, v3, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v9, v7, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iput-boolean v5, v9, Lb/g/a/i/m/f;->j:Z

    iput-boolean v5, v7, Lb/g/a/i/m/o;->g:Z

    invoke-virtual {v7}, Lb/g/a/i/m/k;->n()V

    iget-object v3, v3, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v7, v3, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iput-boolean v5, v7, Lb/g/a/i/m/f;->j:Z

    iput-boolean v5, v3, Lb/g/a/i/m/o;->g:Z

    invoke-virtual {v3}, Lb/g/a/i/m/m;->m()V

    goto :goto_21

    :cond_35
    const/4 v5, 0x0

    iget-object v2, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    invoke-virtual {v2}, Lb/g/a/i/d;->m()V

    iget-object v2, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iput-boolean v5, v2, Lb/g/a/i/d;->a:Z

    iget-object v2, v2, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v3, v2, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iput-boolean v5, v3, Lb/g/a/i/m/f;->j:Z

    iput-boolean v5, v2, Lb/g/a/i/m/o;->g:Z

    invoke-virtual {v2}, Lb/g/a/i/m/k;->n()V

    iget-object v2, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v2, v2, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v3, v2, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iput-boolean v5, v3, Lb/g/a/i/m/f;->j:Z

    iput-boolean v5, v2, Lb/g/a/i/m/o;->g:Z

    invoke-virtual {v2}, Lb/g/a/i/m/m;->m()V

    invoke-virtual {v0}, Lb/g/a/i/m/e;->c()V

    goto :goto_22

    :cond_36
    const/4 v5, 0x0

    :goto_22
    iget-object v2, v0, Lb/g/a/i/m/e;->d:Lb/g/a/i/e;

    invoke-virtual {v0, v2}, Lb/g/a/i/m/e;->b(Lb/g/a/i/e;)Z

    iget-object v2, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    .line 38
    iput v5, v2, Lb/g/a/i/d;->b0:I

    .line 39
    iput v5, v2, Lb/g/a/i/d;->c0:I

    .line 40
    iget-object v2, v2, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v2, v2, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-virtual {v2, v5}, Lb/g/a/i/m/f;->c(I)V

    iget-object v0, v0, Lb/g/a/i/m/e;->a:Lb/g/a/i/e;

    iget-object v0, v0, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v0, v0, Lb/g/a/i/m/o;->h:Lb/g/a/i/m/f;

    invoke-virtual {v0, v5}, Lb/g/a/i/m/f;->c(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v4, v0, :cond_37

    .line 41
    invoke-virtual {v1, v13, v5}, Lb/g/a/i/e;->d0(ZI)Z

    move-result v2

    const/4 v3, 0x1

    and-int/lit8 v18, v2, 0x1

    move/from16 v5, v18

    const/4 v2, 0x1

    goto :goto_23

    :cond_37
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_23
    if-ne v6, v0, :cond_38

    invoke-virtual {v1, v13, v3}, Lb/g/a/i/e;->d0(ZI)Z

    move-result v7

    and-int v3, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_38
    move v3, v5

    :goto_24
    if-eqz v3, :cond_3c

    if-ne v4, v0, :cond_39

    const/4 v4, 0x1

    goto :goto_25

    :cond_39
    const/4 v4, 0x0

    :goto_25
    if-ne v6, v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_26

    :cond_3a
    const/4 v0, 0x0

    :goto_26
    invoke-virtual {v1, v4, v0}, Lb/g/a/i/e;->U(ZZ)V

    goto :goto_27

    :cond_3b
    move-object/from16 v26, p4

    move/from16 v17, v0

    move-object/from16 v25, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    move/from16 p4, v11

    move/from16 v24, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3c
    :goto_27
    if-eqz v3, :cond_3d

    const/4 v0, 0x2

    if-eq v2, v0, :cond_67

    .line 42
    :cond_3d
    iget v0, v1, Lb/g/a/i/e;->Z0:I

    if-lez v10, :cond_4c

    .line 43
    iget-object v2, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lb/g/a/i/e;->g0(I)Z

    move-result v3

    .line 44
    iget-object v4, v1, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    const/4 v15, 0x0

    :goto_28
    if-ge v15, v2, :cond_49

    .line 45
    iget-object v5, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/a/i/d;

    instance-of v6, v5, Lb/g/a/i/g;

    if-eqz v6, :cond_3e

    goto :goto_29

    :cond_3e
    instance-of v6, v5, Lb/g/a/i/a;

    if-eqz v6, :cond_3f

    goto :goto_29

    .line 46
    :cond_3f
    iget-boolean v6, v5, Lb/g/a/i/d;->H:Z

    if-eqz v6, :cond_40

    goto :goto_29

    :cond_40
    if-eqz v3, :cond_41

    .line 47
    iget-object v6, v5, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    if-eqz v6, :cond_41

    iget-object v7, v5, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    if-eqz v7, :cond_41

    iget-object v6, v6, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iget-boolean v6, v6, Lb/g/a/i/m/f;->j:Z

    if-eqz v6, :cond_41

    iget-object v6, v7, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iget-boolean v6, v6, Lb/g/a/i/m/f;->j:Z

    if-eqz v6, :cond_41

    :goto_29
    move-object/from16 v6, v25

    const/4 v7, 0x0

    goto :goto_2d

    :cond_41
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v7

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lb/g/a/i/d;->p(I)Lb/g/a/i/d$a;

    move-result-object v9

    if-ne v7, v8, :cond_42

    iget v11, v5, Lb/g/a/i/d;->q:I

    if-eq v11, v6, :cond_42

    if-ne v9, v8, :cond_42

    iget v11, v5, Lb/g/a/i/d;->r:I

    if-eq v11, v6, :cond_42

    const/4 v11, 0x1

    goto :goto_2a

    :cond_42
    const/4 v11, 0x0

    :goto_2a
    if-nez v11, :cond_45

    invoke-virtual {v1, v6}, Lb/g/a/i/e;->g0(I)Z

    move-result v12

    if-eqz v12, :cond_45

    instance-of v6, v5, Lb/g/a/i/k;

    if-nez v6, :cond_45

    if-ne v7, v8, :cond_43

    iget v6, v5, Lb/g/a/i/d;->q:I

    if-nez v6, :cond_43

    if-eq v9, v8, :cond_43

    invoke-virtual {v5}, Lb/g/a/i/d;->C()Z

    move-result v6

    if-nez v6, :cond_43

    const/4 v11, 0x1

    :cond_43
    if-ne v9, v8, :cond_44

    iget v6, v5, Lb/g/a/i/d;->r:I

    if-nez v6, :cond_44

    if-eq v7, v8, :cond_44

    invoke-virtual {v5}, Lb/g/a/i/d;->C()Z

    move-result v6

    if-nez v6, :cond_44

    const/4 v11, 0x1

    :cond_44
    if-eq v7, v8, :cond_46

    if-ne v9, v8, :cond_45

    goto :goto_2b

    :cond_45
    const/4 v7, 0x0

    goto :goto_2c

    :cond_46
    :goto_2b
    iget v6, v5, Lb/g/a/i/d;->Z:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_47

    const/4 v11, 0x1

    :cond_47
    :goto_2c
    move-object/from16 v6, v25

    if-eqz v11, :cond_48

    goto :goto_2d

    :cond_48
    const/4 v9, 0x0

    invoke-virtual {v6, v4, v5, v9}, Lb/g/a/i/m/b;->a(Lb/g/a/i/m/b$b;Lb/g/a/i/d;I)Z

    :goto_2d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v25, v6

    goto/16 :goto_28

    :cond_49
    move-object/from16 v6, v25

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 48
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v15, 0x0

    :goto_2e
    if-ge v15, v2, :cond_4b

    iget-object v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_4a

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Placeholder;->b()V

    :cond_4a
    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    :cond_4b
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4d

    const/4 v15, 0x0

    :goto_2f
    if-ge v15, v2, :cond_4d

    iget-object v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->r()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2f

    :cond_4c
    move-object/from16 v6, v25

    .line 53
    :cond_4d
    invoke-virtual {v6, v1}, Lb/g/a/i/m/b;->c(Lb/g/a/i/e;)V

    iget-object v2, v6, Lb/g/a/i/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, p4

    move/from16 v4, v24

    const/4 v15, 0x0

    if-lez v10, :cond_4e

    invoke-virtual {v6, v1, v15, v3, v4}, Lb/g/a/i/m/b;->b(Lb/g/a/i/e;III)V

    :cond_4e
    if-lez v2, :cond_65

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v5

    move-object/from16 v7, v26

    if-ne v5, v7, :cond_4f

    const/4 v5, 0x1

    goto :goto_30

    :cond_4f
    const/4 v5, 0x0

    :goto_30
    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v8

    if-ne v8, v7, :cond_50

    const/4 v7, 0x1

    goto :goto_31

    :cond_50
    const/4 v7, 0x0

    :goto_31
    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->w()I

    move-result v8

    iget-object v9, v6, Lb/g/a/i/m/b;->c:Lb/g/a/i/e;

    .line 54
    iget v9, v9, Lb/g/a/i/d;->i0:I

    .line 55
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lb/g/a/i/d;->q()I

    move-result v9

    iget-object v10, v6, Lb/g/a/i/m/b;->c:Lb/g/a/i/e;

    .line 56
    iget v10, v10, Lb/g/a/i/d;->j0:I

    .line 57
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_32
    if-ge v10, v2, :cond_56

    iget-object v12, v6, Lb/g/a/i/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/g/a/i/d;

    instance-of v13, v12, Lb/g/a/i/k;

    if-nez v13, :cond_51

    move/from16 v16, v0

    move-object/from16 v14, v21

    move-object/from16 v13, v22

    move-object/from16 v15, v23

    goto/16 :goto_37

    :cond_51
    invoke-virtual {v12}, Lb/g/a/i/d;->w()I

    move-result v13

    invoke-virtual {v12}, Lb/g/a/i/d;->q()I

    move-result v14

    move/from16 v16, v0

    move-object/from16 v15, v23

    const/4 v0, 0x1

    invoke-virtual {v6, v15, v12, v0}, Lb/g/a/i/m/b;->a(Lb/g/a/i/m/b$b;Lb/g/a/i/d;I)Z

    move-result v20

    or-int v0, v11, v20

    invoke-virtual {v12}, Lb/g/a/i/d;->w()I

    move-result v11

    move/from16 p2, v0

    invoke-virtual {v12}, Lb/g/a/i/d;->q()I

    move-result v0

    if-eq v11, v13, :cond_53

    invoke-virtual {v12, v11}, Lb/g/a/i/d;->T(I)V

    if-eqz v5, :cond_52

    invoke-virtual {v12}, Lb/g/a/i/d;->u()I

    move-result v11

    if-le v11, v8, :cond_52

    invoke-virtual {v12}, Lb/g/a/i/d;->u()I

    move-result v11

    move-object/from16 v13, v22

    invoke-virtual {v12, v13}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lb/g/a/i/c;->e()I

    move-result v20

    add-int v11, v20, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_33

    :cond_52
    move-object/from16 v13, v22

    :goto_33
    const/4 v11, 0x1

    goto :goto_34

    :cond_53
    move-object/from16 v13, v22

    move/from16 v11, p2

    :goto_34
    if-eq v0, v14, :cond_55

    invoke-virtual {v12, v0}, Lb/g/a/i/d;->O(I)V

    if-eqz v7, :cond_54

    invoke-virtual {v12}, Lb/g/a/i/d;->o()I

    move-result v0

    if-le v0, v9, :cond_54

    invoke-virtual {v12}, Lb/g/a/i/d;->o()I

    move-result v0

    move-object/from16 v14, v21

    invoke-virtual {v12, v14}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v11

    invoke-virtual {v11}, Lb/g/a/i/c;->e()I

    move-result v11

    add-int/2addr v11, v0

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    goto :goto_35

    :cond_54
    move-object/from16 v14, v21

    :goto_35
    const/4 v11, 0x1

    goto :goto_36

    :cond_55
    move-object/from16 v14, v21

    :goto_36
    check-cast v12, Lb/g/a/i/k;

    .line 58
    iget-boolean v0, v12, Lb/g/a/i/k;->U0:Z

    or-int/2addr v0, v11

    move v11, v0

    :goto_37
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v22, v13

    move-object/from16 v21, v14

    move-object/from16 v23, v15

    move/from16 v0, v16

    const/4 v15, 0x0

    goto/16 :goto_32

    :cond_56
    move/from16 v16, v0

    move-object/from16 v14, v21

    move-object/from16 v13, v22

    move-object/from16 v15, v23

    const/4 v0, 0x0

    const/4 v10, 0x2

    :goto_38
    if-ge v0, v10, :cond_66

    move v12, v11

    const/4 v11, 0x0

    :goto_39
    if-ge v11, v2, :cond_63

    .line 59
    iget-object v10, v6, Lb/g/a/i/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/g/a/i/d;

    move/from16 p2, v2

    instance-of v2, v10, Lb/g/a/i/h;

    if-eqz v2, :cond_57

    instance-of v2, v10, Lb/g/a/i/k;

    if-eqz v2, :cond_5b

    :cond_57
    instance-of v2, v10, Lb/g/a/i/g;

    if-eqz v2, :cond_58

    goto :goto_3a

    .line 60
    :cond_58
    iget v2, v10, Lb/g/a/i/d;->o0:I

    const/16 v1, 0x8

    if-ne v2, v1, :cond_59

    goto :goto_3a

    :cond_59
    if-eqz v17, :cond_5a

    .line 61
    iget-object v1, v10, Lb/g/a/i/d;->d:Lb/g/a/i/m/k;

    iget-object v1, v1, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iget-boolean v1, v1, Lb/g/a/i/m/f;->j:Z

    if-eqz v1, :cond_5a

    iget-object v1, v10, Lb/g/a/i/d;->e:Lb/g/a/i/m/m;

    iget-object v1, v1, Lb/g/a/i/m/o;->e:Lb/g/a/i/m/g;

    iget-boolean v1, v1, Lb/g/a/i/m/f;->j:Z

    if-eqz v1, :cond_5a

    goto :goto_3a

    :cond_5a
    instance-of v1, v10, Lb/g/a/i/k;

    if-eqz v1, :cond_5c

    :cond_5b
    :goto_3a
    move/from16 p4, v3

    move/from16 v24, v4

    goto/16 :goto_3c

    :cond_5c
    invoke-virtual {v10}, Lb/g/a/i/d;->w()I

    move-result v1

    invoke-virtual {v10}, Lb/g/a/i/d;->q()I

    move-result v2

    move/from16 p4, v3

    .line 62
    iget v3, v10, Lb/g/a/i/d;->h0:I

    move/from16 v24, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5d

    const/4 v4, 0x2

    .line 63
    :cond_5d
    invoke-virtual {v6, v15, v10, v4}, Lb/g/a/i/m/b;->a(Lb/g/a/i/m/b$b;Lb/g/a/i/d;I)Z

    move-result v4

    or-int/2addr v4, v12

    invoke-virtual {v10}, Lb/g/a/i/d;->w()I

    move-result v12

    move/from16 p3, v4

    invoke-virtual {v10}, Lb/g/a/i/d;->q()I

    move-result v4

    if-eq v12, v1, :cond_5f

    invoke-virtual {v10, v12}, Lb/g/a/i/d;->T(I)V

    if-eqz v5, :cond_5e

    invoke-virtual {v10}, Lb/g/a/i/d;->u()I

    move-result v1

    if-le v1, v8, :cond_5e

    invoke-virtual {v10}, Lb/g/a/i/d;->u()I

    move-result v1

    invoke-virtual {v10, v13}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v12

    invoke-virtual {v12}, Lb/g/a/i/c;->e()I

    move-result v12

    add-int/2addr v12, v1

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_5e
    const/4 v1, 0x1

    goto :goto_3b

    :cond_5f
    move/from16 v1, p3

    :goto_3b
    if-eq v4, v2, :cond_61

    invoke-virtual {v10, v4}, Lb/g/a/i/d;->O(I)V

    if-eqz v7, :cond_60

    invoke-virtual {v10}, Lb/g/a/i/d;->o()I

    move-result v1

    if-le v1, v9, :cond_60

    invoke-virtual {v10}, Lb/g/a/i/d;->o()I

    move-result v1

    invoke-virtual {v10, v14}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/g/a/i/c;->e()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v9, v1

    :cond_60
    const/4 v1, 0x1

    .line 64
    :cond_61
    iget-boolean v2, v10, Lb/g/a/i/d;->F:Z

    if-eqz v2, :cond_62

    .line 65
    iget v2, v10, Lb/g/a/i/d;->h0:I

    if-eq v3, v2, :cond_62

    const/4 v12, 0x1

    goto :goto_3c

    :cond_62
    move v12, v1

    :goto_3c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, v24

    const/4 v10, 0x2

    goto/16 :goto_39

    :cond_63
    move/from16 p2, v2

    move/from16 p4, v3

    move/from16 v24, v4

    if-eqz v12, :cond_64

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v24

    .line 66
    invoke-virtual {v6, v1, v0, v2, v3}, Lb/g/a/i/m/b;->b(Lb/g/a/i/e;III)V

    move v4, v3

    const/4 v10, 0x2

    const/4 v11, 0x0

    move v3, v2

    move/from16 v2, p2

    goto/16 :goto_38

    :cond_64
    move-object/from16 v1, p1

    goto :goto_3d

    :cond_65
    move/from16 v16, v0

    :cond_66
    :goto_3d
    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lb/g/a/i/e;->i0(I)V

    :cond_67
    return-void
.end method

.method public r(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final s(Lb/g/a/i/d;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILb/g/a/i/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/g/a/i/d;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Lb/g/a/i/d;",
            ">;I",
            "Lb/g/a/i/c$a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/g/a/i/d;

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:Z

    sget-object v1, Lb/g/a/i/c$a;->h:Lb/g/a/i/c$a;

    if-ne p5, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-boolean p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:Z

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Lb/g/a/i/d;

    .line 1
    iput-boolean p4, v0, Lb/g/a/i/d;->F:Z

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object v0

    invoke-virtual {p3, p5}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p3

    iget p5, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:I

    invoke-virtual {v0, p3, p5, p2, p4}, Lb/g/a/i/c;->b(Lb/g/a/i/c;IIZ)Z

    .line 3
    iput-boolean p4, p1, Lb/g/a/i/d;->F:Z

    .line 4
    sget-object p2, Lb/g/a/i/c$a;->e:Lb/g/a/i/c$a;

    invoke-virtual {p1, p2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/g/a/i/c;->k()V

    sget-object p2, Lb/g/a/i/c$a;->g:Lb/g/a/i/c$a;

    invoke-virtual {p1, p2}, Lb/g/a/i/d;->n(Lb/g/a/i/c$a;)Lb/g/a/i/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/g/a/i/c;->k()V

    :cond_1
    return-void
.end method

.method public setConstraintSet(Lb/g/d/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/d/c;

    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lb/g/d/d;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lb/g/d/b;

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 1
    iput p1, v0, Lb/g/a/i/e;->Z0:I

    const/16 p1, 0x200

    invoke-virtual {v0, p1}, Lb/g/a/i/e;->g0(I)Z

    move-result p1

    sput-boolean p1, Lb/g/a/d;->p:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
