.class public Lc/b/m/b/e$b$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/b/e$b$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/m/b/e$b$c;


# direct methods
.method public constructor <init>(Lc/b/m/b/e$b$c;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/b/e$b$c$a;->a:Lc/b/m/b/e$b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/b/m/b/e$b$c$a;->a:Lc/b/m/b/e$b$c;

    iget-object v0, v0, Lc/b/m/b/e$b$c;->d:Lc/b/m/b/e$b;

    iget-object v1, v0, Lc/b/m/b/e$b;->o:Lc/b/m/b/e;

    .line 1
    iget-object v1, v1, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/f;

    invoke-virtual {v0}, Lc/b/m/d/f;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/b/m/b/e$b$c$a;->a:Lc/b/m/b/e$b$c;

    iget-object v2, v2, Lc/b/m/b/e$b$c;->d:Lc/b/m/b/e$b;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lc/b/m/b/g;

    invoke-direct {v3, v2, v0}, Lc/b/m/b/g;-><init>(Lc/b/m/b/e$b;Lc/b/m/d/f;)V

    .line 4
    sget v0, Lc/b/s/a;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tracking_code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "http://ws.ems.com.vn/api/v1/orders/accept"

    invoke-static {v2, v0, v1, v3}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
