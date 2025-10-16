.class public Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b$a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b$a;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;

    iget-object v0, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
