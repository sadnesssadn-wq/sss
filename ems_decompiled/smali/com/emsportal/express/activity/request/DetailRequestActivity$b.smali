.class public Lcom/emsportal/express/activity/request/DetailRequestActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/request/DetailRequestActivity;->v(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/emsportal/express/activity/request/DetailRequestActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/request/DetailRequestActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->b:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    iput-object p2, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 6

    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->b:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lc/b/m/d/l;

    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 4
    invoke-direct {p1, v2, v0, v1}, Lc/b/m/d/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->b:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->g:Lc/b/m/d/t;

    .line 6
    invoke-virtual {v0}, Lc/b/m/d/t;->f()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->b:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    .line 7
    iget-object p1, p1, Lcom/emsportal/express/activity/request/DetailRequestActivity;->i:Lc/b/m/b/c;

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->b:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    .line 9
    iget-object p1, p1, Lcom/emsportal/express/activity/request/DetailRequestActivity;->j:Landroid/widget/EditText;

    const-string v0, ""

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->b:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    const/16 v0, 0x1807

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;->b:Lcom/emsportal/express/activity/request/DetailRequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
