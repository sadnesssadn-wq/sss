.class public Lb/g/c/b/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/c/b/q$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public b:Lb/g/d/h;

.field public c:Lb/g/c/b/q$b;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/c/b/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lb/g/c/b/q$b;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/c/b/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lb/g/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/util/SparseIntArray;

.field public j:I

.field public k:I

.field public l:Landroid/view/MotionEvent;

.field public m:Z

.field public n:Z

.field public o:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

.field public p:Z

.field public final q:Lb/g/c/b/w;

.field public r:F

.field public s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/c/b/q;->b:Lb/g/d/h;

    iput-object v0, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lb/g/c/b/q;->e:Lb/g/c/b/q$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/g/c/b/q;->f:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lb/g/c/b/q;->h:Ljava/util/HashMap;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lb/g/c/b/q;->i:Landroid/util/SparseIntArray;

    const/16 v1, 0x190

    iput v1, p0, Lb/g/c/b/q;->j:I

    const/4 v1, 0x0

    iput v1, p0, Lb/g/c/b/q;->k:I

    iput-boolean v1, p0, Lb/g/c/b/q;->m:Z

    iput-boolean v1, p0, Lb/g/c/b/q;->n:Z

    iput-object p2, p0, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v2, Lb/g/c/b/w;

    invoke-direct {v2, p2}, Lb/g/c/b/w;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Lb/g/c/b/q;->q:Lb/g/c/b/w;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    move-object v3, v0

    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    if-eqz v2, :cond_6

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "MotionScene"

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    :try_start_1
    const-string v5, "include"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_1
    const-string v5, "StateSet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_3
    const-string v6, "OnSwipe"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :sswitch_4
    const-string v5, "OnClick"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_5
    const-string v5, "Transition"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_6
    const-string v5, "ViewTransition"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v5, 0x9

    goto :goto_2

    :sswitch_7
    const-string v5, "Include"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_8
    const-string v5, "KeyFrameSet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_9
    const-string v5, "ConstraintSet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x5

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    new-instance v2, Lb/g/c/b/v;

    invoke-direct {v2, p1, p2}, Lb/g/c/b/v;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v5, p0, Lb/g/c/b/q;->q:Lb/g/c/b/w;

    .line 2
    iget-object v6, v5, Lb/g/c/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v5, Lb/g/c/b/w;->c:Ljava/util/HashSet;

    .line 3
    iget v6, v2, Lb/g/c/b/v;->b:I

    if-ne v6, v8, :cond_2

    goto :goto_3

    :cond_2
    if-ne v6, v9, :cond_7

    const/4 v4, 0x0

    .line 4
    :goto_3
    invoke-virtual {v5, v2, v4}, Lb/g/c/b/w;->a(Lb/g/c/b/v;Z)V

    goto/16 :goto_5

    .line 5
    :pswitch_1
    new-instance v2, Lb/g/c/b/g;

    invoke-direct {v2, p1, p2}, Lb/g/c/b/g;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v3, :cond_7

    .line 6
    iget-object v4, v3, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lb/g/c/b/q;->l(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lb/g/c/b/q;->j(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    goto/16 :goto_5

    :pswitch_4
    new-instance v2, Lb/g/d/h;

    invoke-direct {v2, p1, p2}, Lb/g/d/h;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Lb/g/c/b/q;->b:Lb/g/d/h;

    goto/16 :goto_5

    :pswitch_5
    if-eqz v3, :cond_7

    .line 8
    iget-object v2, v3, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    new-instance v4, Lb/g/c/b/q$b$a;

    invoke-direct {v4, p1, v3, p2}, Lb/g/c/b/q$b$a;-><init>(Landroid/content/Context;Lb/g/c/b/q$b;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_6
    if-nez v3, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OnSwipe ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_7

    new-instance v2, Lb/g/c/b/t;

    iget-object v4, p0, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {v2, p1, v4, p2}, Lb/g/c/b/t;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 10
    iput-object v2, v3, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    goto :goto_5

    .line 11
    :pswitch_7
    iget-object v2, p0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    new-instance v3, Lb/g/c/b/q$b;

    invoke-direct {v3, p0, p1, p2}, Lb/g/c/b/q$b;-><init>(Lb/g/c/b/q;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-nez v2, :cond_4

    .line 12
    iget-boolean v2, v3, Lb/g/c/b/q$b;->b:Z

    if-nez v2, :cond_4

    .line 13
    iput-object v3, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 14
    iget-object v2, v3, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v2, :cond_4

    .line 15
    iget-boolean v4, p0, Lb/g/c/b/q;->p:Z

    invoke-virtual {v2, v4}, Lb/g/c/b/t;->c(Z)V

    .line 16
    :cond_4
    iget-boolean v2, v3, Lb/g/c/b/q$b;->b:Z

    if-eqz v2, :cond_7

    .line 17
    iget v2, v3, Lb/g/c/b/q$b;->c:I

    if-ne v2, v10, :cond_5

    .line 18
    iput-object v3, p0, Lb/g/c/b/q;->e:Lb/g/c/b/q$b;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lb/g/c/b/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object v2, p0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lb/g/c/b/q;->m(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_7
    :goto_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 19
    :cond_8
    :goto_6
    iget-object p1, p0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    sget p2, Lb/g/d/e;->motion_base:I

    new-instance p3, Lb/g/d/c;

    invoke-direct {p3}, Lb/g/d/c;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lb/g/c/b/q;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_9
        -0x49df9cec -> :sswitch_8
        -0x28fe1378 -> :sswitch_7
        0x3b205fa -> :sswitch_6
        0x100d4975 -> :sswitch_5
        0x12a432c9 -> :sswitch_4
        0x138aac7b -> :sswitch_3
        0x2f487256 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x73c954a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z
    .locals 10

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->e:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    iget-object v3, p0, Lb/g/c/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return v5

    .line 2
    :cond_1
    iget-object v3, p0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/c/b/q$b;

    .line 3
    iget v7, v6, Lb/g/c/b/q$b;->n:I

    if-nez v7, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    iget-object v8, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    const/4 v9, 0x2

    if-ne v8, v6, :cond_5

    .line 5
    iget v8, v8, Lb/g/c/b/q$b;->r:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_5

    goto :goto_1

    .line 6
    :cond_5
    iget v8, v6, Lb/g/c/b/q$b;->d:I

    if-ne p2, v8, :cond_8

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    if-ne v7, v9, :cond_8

    .line 7
    :cond_6
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    .line 8
    iget p2, v6, Lb/g/c/b/q$b;->n:I

    if-ne p2, v8, :cond_7

    .line 9
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->K()V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    goto :goto_3

    :cond_7
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(Z)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E()V

    :goto_3
    return v4

    .line 10
    :cond_8
    iget v8, v6, Lb/g/c/b/q$b;->c:I

    if-ne p2, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_9

    if-ne v7, v4, :cond_2

    .line 11
    :cond_9
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    .line 12
    iget p2, v6, Lb/g/c/b/q$b;->n:I

    const/4 v3, 0x0

    if-ne p2, v8, :cond_a

    .line 13
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    .line 14
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(Z)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E()V

    :goto_4
    return v4

    :cond_b
    return v5
.end method

.method public b(I)Lb/g/d/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/g/c/b/q;->b:Lb/g/d/h;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Lb/g/d/h;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Warning could not find ConstraintSet id/"

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lb/g/d/c;

    return-object p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/g/c/b/q$b;->h:I

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lb/g/c/b/q;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1
    :cond_0
    iget v0, v0, Lb/g/c/b/q$b;->c:I

    return v0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return p1
.end method

.method public f()Landroid/view/animation/Interpolator;
    .locals 3

    iget-object v0, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 1
    iget v1, v0, Lb/g/c/b/q$b;->e:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_7

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    :cond_3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    :cond_5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 3
    :cond_6
    iget-object v0, v0, Lb/g/c/b/q$b;->f:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    move-result-object v0

    new-instance v1, Lb/g/c/b/q$a;

    invoke-direct {v1, p0, v0}, Lb/g/c/b/q$a;-><init>(Lb/g/c/b/q;Lb/g/a/h/a/c;)V

    return-object v1

    :cond_7
    iget-object v0, p0, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 5
    iget v1, v1, Lb/g/c/b/q$b;->g:I

    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public g(Lb/g/c/b/n;)V
    .locals 2

    iget-object v0, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/g/c/b/q;->e:Lb/g/c/b/q$b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/c/b/g;

    invoke-virtual {v1, p1}, Lb/g/c/b/g;->b(Lb/g/c/b/n;)V

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, v0, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/c/b/g;

    invoke-virtual {v1, p1}, Lb/g/c/b/g;->b(Lb/g/c/b/n;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public h()F
    .locals 1

    iget-object v0, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lb/g/c/b/t;->t:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1
    :cond_0
    iget v0, v0, Lb/g/c/b/q$b;->d:I

    return v0
.end method

.method public final j(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 13

    new-instance v0, Lb/g/d/c;

    invoke-direct {v0}, Lb/g/d/c;-><init>()V

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lb/g/d/c;->e:Z

    .line 2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_0
    if-ge v4, v2, :cond_a

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x76f77648

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v9, v10, :cond_4

    const v10, -0x59328327

    if-eq v9, v10, :cond_2

    const/16 v10, 0xd1b

    if-eq v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    goto :goto_2

    :cond_2
    const-string v9, "deriveConstraintsFrom"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const-string v9, "ConstraintRotate"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_1
    const/4 v7, -0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_9

    if-eq v7, v12, :cond_8

    if-eq v7, v11, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p1, v8}, Lb/g/c/b/q;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lb/g/c/b/q;->h:Ljava/util/HashMap;

    const/16 v9, 0x2f

    .line 3
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 4
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v5}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lb/g/d/c;->a:Ljava/lang/String;

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1, v8}, Lb/g/c/b/q;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lb/g/d/c;->c:I

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    if-eq v5, v3, :cond_c

    iget-object v1, p0, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    invoke-virtual {v0, p1, p2}, Lb/g/d/c;->k(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v6, v3, :cond_b

    iget-object p1, p0, Lb/g/c/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_b
    iget-object p1, p0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    return v5
.end method

.method public final k(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const-string v0, "ConstraintSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lb/g/c/b/q;->j(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public final l(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lb/g/d/f;->include:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lb/g/d/f;->include_constraintSet:I

    if-ne v2, v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lb/g/c/b/q;->k(Landroid/content/Context;I)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final m(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lb/g/d/f;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lb/g/d/f;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Lb/g/c/b/q;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/q;->j:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iput v3, p0, Lb/g/c/b/q;->j:I

    goto :goto_1

    :cond_0
    sget v3, Lb/g/d/f;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/q;->k:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final n(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 12

    iget-object v0, p0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/d/c;

    iget-object v1, v0, Lb/g/d/c;->a:Ljava/lang/String;

    iput-object v1, v0, Lb/g/d/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lb/g/c/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {p0, p1, p2}, Lb/g/c/b/q;->n(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    iget-object p2, p0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/g/d/c;

    if-nez p2, :cond_0

    const-string p2, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-static {p2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lb/g/d/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lb/g/d/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lb/g/d/c;->b:Ljava/lang/String;

    .line 1
    iget-object p1, p2, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p2, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/d/c$a;

    iget-object v3, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lb/g/d/c$a;

    invoke-direct {v5}, Lb/g/d/c$a;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/d/c$a;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v4, v3, Lb/g/d/c$b;->b:Z

    if-nez v4, :cond_4

    iget-object v4, v1, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {v3, v4}, Lb/g/d/c$b;->a(Lb/g/d/c$b;)V

    :cond_4
    iget-object v3, v2, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget-boolean v4, v3, Lb/g/d/c$d;->a:Z

    if-nez v4, :cond_5

    iget-object v4, v1, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    invoke-virtual {v3, v4}, Lb/g/d/c$d;->a(Lb/g/d/c$d;)V

    :cond_5
    iget-object v3, v2, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget-boolean v4, v3, Lb/g/d/c$e;->a:Z

    if-nez v4, :cond_6

    iget-object v4, v1, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v3, v4}, Lb/g/d/c$e;->a(Lb/g/d/c$e;)V

    :cond_6
    iget-object v3, v2, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget-boolean v4, v3, Lb/g/d/c$c;->a:Z

    if-nez v4, :cond_7

    iget-object v4, v1, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {v3, v4}, Lb/g/d/c$c;->a(Lb/g/d/c$c;)V

    :cond_7
    iget-object v3, v1, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v2, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    iget-object v6, v1, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/d/a;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lb/g/d/c;->b:Ljava/lang/String;

    const-string v2, "  layout"

    invoke-static {p1, v1, v2}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lb/g/d/c;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_14

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    iget-boolean v5, v0, Lb/g/d/c;->e:Z

    if-eqz v5, :cond_b

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_3
    iget-object v5, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lb/g/d/c$a;

    invoke-direct {v7}, Lb/g/d/c$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v5, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/d/c$a;

    if-nez v5, :cond_d

    goto/16 :goto_4

    :cond_d
    iget-object v6, v5, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v6, v6, Lb/g/d/c$b;->b:Z

    const/4 v7, 0x1

    if-nez v6, :cond_f

    .line 4
    invoke-virtual {v5, v4, v3}, Lb/g/d/c$a;->c(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 5
    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v3, :cond_e

    iget-object v3, v5, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    move-object v4, v2

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object v4

    iput-object v4, v3, Lb/g/d/c$b;->i0:[I

    instance-of v3, v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v3, :cond_e

    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    iget-object v4, v5, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    move-result v6

    iput-boolean v6, v4, Lb/g/d/c$b;->n0:Z

    iget-object v4, v5, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v6

    iput v6, v4, Lb/g/d/c$b;->f0:I

    iget-object v4, v5, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->g0:I

    :cond_e
    iget-object v3, v5, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput-boolean v7, v3, Lb/g/d/c$b;->b:Z

    :cond_f
    iget-object v3, v5, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget-boolean v4, v3, Lb/g/d/c$d;->a:Z

    if-nez v4, :cond_10

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    iput v4, v3, Lb/g/d/c$d;->b:I

    iget-object v3, v5, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v3, Lb/g/d/c$d;->d:F

    iget-object v3, v5, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iput-boolean v7, v3, Lb/g/d/c$d;->a:Z

    :cond_10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget-boolean v6, v4, Lb/g/d/c$e;->a:Z

    if-nez v6, :cond_13

    iput-boolean v7, v4, Lb/g/d/c$e;->a:Z

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v6

    iput v6, v4, Lb/g/d/c$e;->b:F

    iget-object v4, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v6

    iput v6, v4, Lb/g/d/c$e;->c:F

    iget-object v4, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v6

    iput v6, v4, Lb/g/d/c$e;->d:F

    iget-object v4, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v6

    iput v6, v4, Lb/g/d/c$e;->e:F

    iget-object v4, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v6

    iput v6, v4, Lb/g/d/c$e;->f:F

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v6

    float-to-double v7, v4

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_11

    float-to-double v7, v6

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_12

    :cond_11
    iget-object v7, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iput v4, v7, Lb/g/d/c$e;->g:F

    iput v6, v7, Lb/g/d/c$e;->h:F

    :cond_12
    iget-object v4, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iput v6, v4, Lb/g/d/c$e;->j:F

    iget-object v4, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    iput v6, v4, Lb/g/d/c$e;->k:F

    const/16 v4, 0x15

    if-lt v3, v4, :cond_13

    iget-object v3, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Lb/g/d/c$e;->l:F

    iget-object v3, v5, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget-boolean v4, v3, Lb/g/d/c$e;->m:Z

    if-eqz v4, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    iput v2, v3, Lb/g/d/c$e;->n:F

    :cond_13
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 6
    :cond_14
    iget-object p1, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/g/d/c$a;

    iget-object v1, p2, Lb/g/d/c$a;->h:Lb/g/d/c$a$a;

    if-eqz v1, :cond_15

    iget-object v1, p2, Lb/g/d/c$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lb/g/d/c;->i(I)Lb/g/d/c$a;

    move-result-object v2

    iget-object v3, v2, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-object v3, v3, Lb/g/d/c$b;->k0:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v4, p2, Lb/g/d/c$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p2, Lb/g/d/c$a;->h:Lb/g/d/c$a$a;

    invoke-virtual {v3, v2}, Lb/g/d/c$a$a;->e(Lb/g/d/c$a;)V

    iget-object v2, v2, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    iget-object v3, p2, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_6

    :cond_17
    iget v1, p2, Lb/g/d/c$a;->a:I

    invoke-virtual {v0, v1}, Lb/g/d/c;->i(I)Lb/g/d/c$a;

    move-result-object v1

    iget-object p2, p2, Lb/g/d/c$a;->h:Lb/g/d/c$a$a;

    invoke-virtual {p2, v1}, Lb/g/d/c$a$a;->e(Lb/g/d/c$a;)V

    goto :goto_5

    :cond_18
    return-void
.end method

.method public o(II)V
    .locals 7

    iget-object v0, p0, Lb/g/c/b/q;->b:Lb/g/d/h;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1, v1}, Lb/g/d/h;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v2, p0, Lb/g/c/b/q;->b:Lb/g/d/h;

    invoke-virtual {v2, p2, v1, v1}, Lb/g/d/h;->a(III)I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    move v2, p2

    :goto_1
    iget-object v3, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v3, :cond_3

    .line 1
    iget v4, v3, Lb/g/c/b/q$b;->c:I

    if-ne v4, p2, :cond_3

    .line 2
    iget v3, v3, Lb/g/c/b/q$b;->d:I

    if-ne v3, p1, :cond_3

    return-void

    .line 3
    :cond_3
    iget-object v3, p0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/q$b;

    .line 4
    iget v5, v4, Lb/g/c/b/q$b;->c:I

    if-ne v5, v2, :cond_5

    .line 5
    iget v6, v4, Lb/g/c/b/q$b;->d:I

    if-eq v6, v0, :cond_6

    :cond_5
    if-ne v5, p2, :cond_4

    iget v5, v4, Lb/g/c/b/q$b;->d:I

    if-ne v5, p1, :cond_4

    .line 6
    :cond_6
    iput-object v4, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 7
    iget-object p1, v4, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz p1, :cond_7

    .line 8
    iget-boolean p2, p0, Lb/g/c/b/q;->p:Z

    invoke-virtual {p1, p2}, Lb/g/c/b/t;->c(Z)V

    :cond_7
    return-void

    :cond_8
    iget-object p1, p0, Lb/g/c/b/q;->e:Lb/g/c/b/q$b;

    iget-object v3, p0, Lb/g/c/b/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/q$b;

    .line 9
    iget v5, v4, Lb/g/c/b/q$b;->c:I

    if-ne v5, p2, :cond_9

    move-object p1, v4

    goto :goto_2

    .line 10
    :cond_a
    new-instance p2, Lb/g/c/b/q$b;

    invoke-direct {p2, p0, p1}, Lb/g/c/b/q$b;-><init>(Lb/g/c/b/q;Lb/g/c/b/q$b;)V

    .line 11
    iput v0, p2, Lb/g/c/b/q$b;->d:I

    .line 12
    iput v2, p2, Lb/g/c/b/q$b;->c:I

    if-eq v0, v1, :cond_b

    .line 13
    iget-object p1, p0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iput-object p2, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    return-void
.end method

.method public p()Z
    .locals 3

    iget-object v0, p0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/c/b/q$b;

    .line 1
    iget-object v1, v1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_1
    iget-object v0, p0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, v0, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
