.class public final synthetic Lc/b/r/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

.field public final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/f;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    iput-object p2, p0, Lc/b/r/a/f;->d:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/b/r/a/f;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    iget-object v0, p0, Lc/b/r/a/f;->d:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->E(Z)V

    invoke-virtual {p1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->B()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lc/b/r/a/u;

    invoke-direct {v2, p1}, Lc/b/r/a/u;-><init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V

    invoke-static {v1, v2}, Lc/b/s/a;->s(Ljava/util/List;Lc/b/t/b$d;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
