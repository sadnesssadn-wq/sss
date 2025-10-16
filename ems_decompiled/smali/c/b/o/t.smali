.class public Lc/b/o/t;
.super Lcom/emsportal/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/o/t$c;
    }
.end annotation


# static fields
.field public static final p:Ljava/lang/String;


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Lcom/emsportal/widget/AutoScrollViewPager;

.field public f:Landroidx/viewpager/widget/ViewPager;

.field public g:Lme/relex/circleindicator/CircleIndicator;

.field public h:Lme/relex/circleindicator/CircleIndicator;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/view/ViewGroup;

.field public l:Lc/b/o/t$c;

.field public m:Lc/b/o/t$c;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/emsportal/model/ObjActionHome;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/b/o/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b/o/t;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f0b006b

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lb/u/a;->K()Z

    move-result v1

    iput-boolean v1, v0, Lc/b/o/t;->o:Z

    .line 1
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v2, 0x2

    new-array v4, v2, [Lc/b/m/d/n;

    new-instance v5, Lc/b/m/d/n;

    const/4 v6, 0x1

    const-string v7, "M\u00e3 E1"

    invoke-direct {v5, v6, v7}, Lc/b/m/d/n;-><init>(ILjava/lang/String;)V

    aput-object v5, v4, v3

    new-instance v5, Lc/b/m/d/n;

    const/4 v7, 0x3

    const-string v8, "S\u1ed1 \u0111i\u1ec7n tho\u1ea1i ng\u01b0\u1eddi nh\u1eadn"

    invoke-direct {v5, v7, v8}, Lc/b/m/d/n;-><init>(ILjava/lang/String;)V

    aput-object v5, v4, v6

    .line 2
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 3
    new-instance v5, Lc/b/i/d;

    invoke-direct {v5, v4}, Lc/b/i/d;-><init>(Ljava/util/List;)V

    iget-object v4, v0, Lc/b/o/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, v0, Lc/b/o/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 4
    invoke-static {}, Lb/u/a;->K()Z

    move-result v1

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    if-eqz v1, :cond_0

    const-string v4, "EMS Trong N\u01b0\u1edbc"

    goto :goto_0

    :cond_0
    const-string v4, "EMS G\u1eedi T\u1ea1i Qu\u1ea7y"

    :goto_0
    new-instance v5, Lcom/emsportal/model/ObjActionHome;

    const/16 v8, 0xb

    const v9, 0x7f07011b

    invoke-direct {v5, v8, v9, v4}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v4, Lcom/emsportal/model/ObjActionHome;

    const/4 v10, 0x5

    const v11, 0x7f0700e0

    const-string v12, "T\u1ea1o m\u1edbi b\u01b0u g\u1eedi"

    invoke-direct {v4, v10, v11, v12}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v10, Lcom/emsportal/model/ObjActionHome;

    const/16 v11, 0xa

    const v13, 0x7f0700f0

    const-string v14, "Qu\u1ea3n l\u00fd b\u01b0u g\u1eedi"

    invoke-direct {v10, v11, v13, v14}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v11, Lcom/emsportal/model/ObjActionHome;

    const/16 v13, 0x8

    const v15, 0x7f070110

    const-string v2, "Th\u1ed1ng k\u00ea"

    invoke-direct {v11, v13, v15, v2}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/emsportal/model/ObjActionHome;

    const/4 v13, 0x4

    const v15, 0x7f0700d3

    const-string v3, "T\u00ednh tr\u01b0\u1edbc c\u01b0\u1edbc ph\u00ed"

    invoke-direct {v2, v13, v15, v3}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v3, Lcom/emsportal/model/ObjActionHome;

    const/4 v13, 0x7

    const v15, 0x7f07010e

    const-string v7, "B\u01b0u g\u1eedi ch\u1edd ph\u00ea duy\u1ec7t"

    invoke-direct {v3, v13, v15, v7}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v7, Lcom/emsportal/model/ObjActionHome;

    const-string v13, "EMS Si\u00eau t\u1ed1c"

    invoke-direct {v7, v8, v9, v13}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v13, Lcom/emsportal/model/ObjActionHome;

    const/4 v15, 0x6

    const v8, 0x7f0700e9

    const-string v9, "Danh s\u00e1ch b\u01b0u g\u1eedi"

    invoke-direct {v13, v15, v8, v9}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v8, Lcom/emsportal/model/ObjActionHome;

    const/16 v9, 0x9

    const v15, 0x7f070126

    const-string v6, "T\u1ea1o b\u01b0u g\u1eedi"

    invoke-direct {v8, v9, v15, v6}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v6, Lcom/emsportal/model/ObjActionHome;

    const v9, 0x7f070117

    const-string v15, "S\u1ea3n l\u01b0\u1ee3ng B\u01b0u g\u1eedi COD"

    move-object/from16 v18, v8

    const/4 v8, 0x1

    invoke-direct {v6, v8, v9, v15}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v8, Lcom/emsportal/model/ObjActionHome;

    const/16 v9, 0xf

    const v15, 0x7f0700da

    move-object/from16 v19, v13

    const-string v13, "Th\u1ed1ng k\u00ea COD theo ng\u00e0y"

    invoke-direct {v8, v9, v15, v13}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v9, Lcom/emsportal/model/ObjActionHome;

    const-string v13, "EMS Qu\u1ed1c T\u1ebf"

    move-object/from16 v16, v7

    const/16 v7, 0xb

    const v15, 0x7f07011b

    invoke-direct {v9, v7, v15, v13}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v7, Lcom/emsportal/model/ObjActionHome;

    const/16 v13, 0xc

    const v15, 0x7f0700df

    invoke-direct {v7, v13, v15, v12}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v12, Lcom/emsportal/model/ObjActionHome;

    const/16 v13, 0xe

    const v15, 0x7f0700de

    move-object/from16 v17, v7

    const-string v7, "T\u1ea1o L\u00f4 b\u01b0u g\u1eedi"

    invoke-direct {v12, v13, v15, v7}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v7, Lcom/emsportal/model/ObjActionHome;

    const/16 v13, 0xd

    const v15, 0x7f0700f4

    invoke-direct {v7, v13, v15, v14}, Lcom/emsportal/model/ObjActionHome;-><init>(IILjava/lang/String;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_1

    iget-object v4, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    move-object/from16 v2, v17

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/b/v/c/a;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    move-object/from16 v2, v16

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    move-object/from16 v2, v19

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Lc/b/i/a;

    iget-object v2, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-direct {v1, v2}, Lc/b/i/a;-><init>(Ljava/util/List;)V

    iget-object v2, v0, Lc/b/o/t;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, v0, Lc/b/o/t;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v3, v0, Lc/b/o/t;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v3, v0, Lc/b/o/t;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lc/b/x/d;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {v4, v5, v6}, Lc/b/x/d;-><init>(Landroid/content/Context;F)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    new-instance v3, Lc/b/o/u;

    invoke-direct {v3, v0, v2}, Lc/b/o/u;-><init>(Lc/b/o/t;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$b;)V

    new-instance v2, Lc/b/o/a;

    invoke-direct {v2, v0}, Lc/b/o/a;-><init>(Lc/b/o/t;)V

    .line 5
    iput-object v2, v1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 6
    iget-object v1, v0, Lc/b/o/t;->e:Lcom/emsportal/widget/AutoScrollViewPager;

    .line 7
    new-instance v2, Lc/b/o/t$c;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lc/b/o/t$c;-><init>(Lc/b/o/t;Lb/m/d/y;)V

    iput-object v2, v0, Lc/b/o/t;->l:Lc/b/o/t$c;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/x/a/a;)V

    iget-object v2, v0, Lc/b/o/t;->g:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v2, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v2, v0, Lc/b/o/t;->l:Lc/b/o/t$c;

    iget-object v3, v0, Lc/b/o/t;->g:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v3}, Lme/relex/circleindicator/CircleIndicator;->getDataSetObserver()Landroid/database/DataSetObserver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/x/a/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v3, v4}, Lb/u/a;->g(Landroid/content/Context;F)I

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static {v2, v1, v5, v6, v3}, Lc/b/w/o;->a(Landroid/app/Activity;Landroid/view/View;III)V

    .line 8
    iget-object v2, v1, Lcom/emsportal/widget/AutoScrollViewPager;->k:Lc/b/x/b;

    if-eqz v2, :cond_4

    iget-wide v5, v1, Lcom/emsportal/widget/AutoScrollViewPager;->c:J

    long-to-double v5, v5

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    int-to-double v2, v2

    iget-wide v7, v1, Lcom/emsportal/widget/AutoScrollViewPager;->h:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v7

    iget-wide v7, v1, Lcom/emsportal/widget/AutoScrollViewPager;->i:D

    mul-double v2, v2, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v5

    double-to-long v2, v2

    .line 9
    iget-object v5, v1, Lcom/emsportal/widget/AutoScrollViewPager;->j:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, v1, Lcom/emsportal/widget/AutoScrollViewPager;->j:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/emsportal/widget/AutoScrollViewPager;->setStopScrollWhenTouch(Z)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v1, v5, v6}, Lcom/emsportal/widget/AutoScrollViewPager;->setInterval(J)V

    invoke-virtual {v1, v2}, Lcom/emsportal/widget/AutoScrollViewPager;->setCycle(Z)V

    .line 11
    iget-object v1, v0, Lc/b/o/t;->f:Landroidx/viewpager/widget/ViewPager;

    .line 12
    new-instance v2, Lc/b/o/t$c;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lc/b/o/t$c;-><init>(Lc/b/o/t;Lb/m/d/y;)V

    iput-object v2, v0, Lc/b/o/t;->m:Lc/b/o/t$c;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/x/a/a;)V

    iget-object v2, v0, Lc/b/o/t;->h:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v2, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v2, v0, Lc/b/o/t;->m:Lc/b/o/t$c;

    iget-object v3, v0, Lc/b/o/t;->h:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v3}, Lme/relex/circleindicator/CircleIndicator;->getDataSetObserver()Landroid/database/DataSetObserver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/x/a/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-static {v3, v4}, Lb/u/a;->g(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-static {v2, v1, v5, v4, v3}, Lc/b/w/o;->a(Landroid/app/Activity;Landroid/view/View;III)V

    .line 13
    iget-object v1, v0, Lc/b/o/t;->i:Landroid/widget/ImageView;

    new-instance v2, Lc/b/o/t$a;

    invoke-direct {v2, v0}, Lc/b/o/t$a;-><init>(Lc/b/o/t;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    iget-object v2, v0, Lc/b/o/t;->k:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    iget-object v1, v0, Lc/b/o/t;->j:Landroid/widget/EditText;

    new-instance v2, Lc/b/o/t$b;

    invoke-direct {v2, v0}, Lc/b/o/t$b;-><init>(Lc/b/o/t;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lc/b/o/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080211

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lc/b/o/t;->d:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080509

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/AutoScrollViewPager;

    iput-object v0, p0, Lc/b/o/t;->e:Lcom/emsportal/widget/AutoScrollViewPager;

    const v0, 0x7f080165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iput-object v0, p0, Lc/b/o/t;->g:Lme/relex/circleindicator/CircleIndicator;

    const v0, 0x7f080508

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lc/b/o/t;->f:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f080166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iput-object v0, p0, Lc/b/o/t;->h:Lme/relex/circleindicator/CircleIndicator;

    const v0, 0x7f080156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc/b/o/t;->i:Landroid/widget/ImageView;

    const v0, 0x7f080115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/b/o/t;->j:Landroid/widget/EditText;

    const v0, 0x7f08022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/o/t;->k:Landroid/view/ViewGroup;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x4c7

    if-ne p1, v0, :cond_0

    const/16 v0, 0x144

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lc/b/o/t;->o:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    check-cast v0, Lb/b/k/h;

    const-class v1, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    const/16 v2, 0x7b

    invoke-static {v0, v1, v2}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    :cond_0
    const/16 v0, 0xbc4

    if-ne p1, v0, :cond_1

    const/16 p1, 0x202a

    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    check-cast p1, Lb/b/k/h;

    const-class p2, Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
