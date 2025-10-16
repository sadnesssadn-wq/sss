.class public Lc/b/m/e/b/a$b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/e/b/a$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/m/e/b/a$b$a;


# direct methods
.method public constructor <init>(Lc/b/m/e/b/a$b$a;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/e/b/a$b$a$a;->a:Lc/b/m/e/b/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/b/m/e/b/a$b$a$a;->a:Lc/b/m/e/b/a$b$a;

    iget-object v0, v0, Lc/b/m/e/b/a$b$a;->d:Lc/b/m/e/b/a$b;

    iget-object v1, v0, Lc/b/m/e/b/a$b;->h:Lc/b/m/e/b/a;

    .line 1
    iget-object v1, v1, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/e/d/c;

    invoke-virtual {v0}, Lc/b/m/e/d/c;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/m/e/b/a$b$a$a;->a:Lc/b/m/e/b/a$b$a;

    iget-object v1, v1, Lc/b/m/e/b/a$b$a;->d:Lc/b/m/e/b/a$b;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc/b/m/e/b/b;

    invoke-direct {v2, v1}, Lc/b/m/e/b/b;-><init>(Lc/b/m/e/b/a$b;)V

    .line 4
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    const-string v3, "id"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "name"

    const-string v3, "delete"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    const-string v3, "1"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const-string v3, "http://ws.ems.com.vn/api/v1/orders/rc-edit"

    invoke-static {v3, v1, v0, v2}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
